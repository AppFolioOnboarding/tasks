#!/usr/bin/env python
"""Insert or remove holes in task numbers."""

from __future__ import print_function
import os
import subprocess
import sys


def insert_holes(task_dir, by_number, holes):
    """Insert holes into the task list at numbers in ``holes``."""
    if max(holes) > len(by_number) or min(holes) <= 0:
        print('Invalid hole numbers')
        sys.exit(1)

    current_number = len(by_number) + len(holes)
    for task_number in sorted(by_number, reverse=True):
        if current_number != task_number:
            rename(task_dir, by_number, task_number, current_number)
        if task_number in holes:
            current_number -= 1
        current_number -= 1


def remove_holes(task_dir, by_number):
    """Remove holes in task numbering."""
    current_number = 1
    for task_number in sorted(by_number):
        if current_number != task_number:
            rename(task_dir, by_number, task_number, current_number)
        current_number += 1


def rename(task_dir, by_number, src_number, dst_number):
    """Rename task.

    Attempt to rename using git first, then fallback to standard rename.

    """
    src, task = by_number[src_number]
    dst = os.path.join(task_dir, '{:02d}_{}'.format(dst_number, task))

    assert dst_number not in by_number
    by_number[dst_number] = (dst, by_number[src_number][1])
    del by_number[src_number]

    with open(os.devnull, 'w') as fp_null:
        try:
            subprocess.check_call(['git', 'mv', src, dst], stdout=fp_null,
                                  stderr=fp_null)
        except subprocess.CalledProcessError:
            os.rename(src, dst)
    print('Renamed {} to {}'.format(src, dst))


def task_list(task_dir):
    """Return a mapping of task numbers to their path and task name."""
    by_number = {}
    for filename in os.listdir('tasks'):
        number, task = filename.split('_', 1)
        number = int(number)
        if number in by_number:
            print('Two tasks with number: {}'.format(number))
            sys.exit(1)
        by_number[int(number)] = (os.path.join(task_dir, filename), task)
    return by_number


def usage():
    """Output usage message."""
    print("""Usage: {} [NUMBER...]

On first pass, remove all holes in task numbering.

When one ore more NUMBER values are provided, the second pass introduces holes
into those positions based on the positions after holes have been removed.

For instance, if there are the followings tasks:

01_task1
02_task2
HOLE
04_task3
05_task4
06_task5

Inserting holes at positions 3 and 5 will result in:

01_task1
02_task2
HOLE
04_task3
05_task4
HOLE
07_task5""".format(os.path.basename(__file__)))
    return 1


def main():
    """Provide the command-line entry to this script."""
    try:
        holes = set(int(x) for x in sys.argv[1:])
    except ValueError:
        return usage()

    task_dir = os.path.join(os.path.dirname(__file__), 'tasks')
    by_number = task_list(task_dir)
    remove_holes(task_dir, by_number)
    if holes:
        insert_holes(task_dir, by_number, holes)
    return 0


if __name__ == '__main__':
    sys.exit(main())
