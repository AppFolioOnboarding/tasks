---
title: Images by Tag
assignee: shiboying
labels: unstarted
---

#### As a user I want to view all images associated with a tag.

__Story__:

Now that we have added the ability for images to be associated with tags, let
us provide the ability for users to filter images by a given tag. Nana, who
loves fast planes, will be delighted to see only images labeled with SR-71.

__Acceptance criteria__:
- [ ] When I click on a tag, I see a filtered list of only the images that have
  the tag I clicked on.
- [ ] The tag name, not its ID, is used to perform the filtering.

__Discussion topics__:
- [ ] Where in the code should we implement this functionality?
- [ ] What happens if a user tries to manually filter by a nonexistent tag?

__Dependencies__:
- Image Tags
