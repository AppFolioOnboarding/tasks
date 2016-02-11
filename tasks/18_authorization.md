---
title: Authorization
---

#### As an application hoster I want to restrict some functionality to specific users.

- [ ] Logged out users are restricted to read-only access.
- [ ] Links to non-read actions are not shown to logged out users.
- [ ] Attempting to access a page that requires authentication redirects you to
  the login page.
- [ ] Upon successful login, you are redirected back to where you had tried to
  navigate.
- [ ] Every image is associated with the user that added it.
- [ ] Only the user that added an image can delete that image.

Discussion topics:
- [ ] If we wanted to add a lot of authorization rules, how might we want to
  organize our code to keep it maintainable?

Further reading:
- https://github.com/elabs/pundit

Dependencies:
- Authentication
