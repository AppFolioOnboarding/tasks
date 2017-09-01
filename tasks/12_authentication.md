---
title: Authentication
assignee: bboe
labels: unstarted
---

#### As an application hoster I want to add user authentication to my application.

__Story__:

We have done a great job providing immediate value to our customers. At this
point they can both add and delete images, in addition to a few other features
that are either completed or in the works. Along with a growth in our web
service's popularity have come an increase in number of reports of missing
images. Upon investigation, it turns out that the majority of delete requests
are issued by only a handful of IP addresses. While we could blacklist those IP
addresses from the delete operation, it has always been our plan to only permit
the user who added an image to delete that image. To begin that effort we must
first add the concept of a user.

Please split this task up into three separate PRs. The second, and third should
depend on the preceding ones.

__Acceptance criteria PR1__:
- [ ] Users can sign up.

__Acceptance criteria PR2__:
- [ ] Users can log in after they've signed up.
- [ ] Users can log out after logging in.
- [ ] Logged in users should not be able to register, nor log in again.

Reviewer: grahamotte

__Acceptance criteria PR3__:
- [ ] Users can choose to be remembered as part of the login
  process.<sup>†</sup>
- [ ] Multiple browsers can concurrently maintain the remembered status for the
  same user.


<sup>†</sup>: "Remembering" means that users will remain logged into the site
even after completely closing their web browser. Please be sure to completely
close the browser (`cmd` + `q`) when testing this functionality. Closing the
window (`cmd` + `w`, or clicking the red circle) on Mac OS does not close the
browser.

__Note__: Do not use Devise for this task.

__Discussion topics__:
- [ ] If we wanted to add more advanced features such as email activation and
  "forgot my password", should we continue to "roll our own" authentication?

__Reference material__:
- https://www.railstutorial.org/book/modeling_users
- https://www.railstutorial.org/book/sign_up
- https://www.railstutorial.org/book/basic_login
- https://www.railstutorial.org/book/advanced_login

__Further reading__:
- https://github.com/plataformatec/devise

__Dependencies__:
- Delete Image
- Refactor flow tests to use page objects
