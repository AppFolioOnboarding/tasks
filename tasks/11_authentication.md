---
title: Authentication
assignee: bboe
labels: unstarted
---

#### As an application hoster I want to add user authentication to my application.

- [ ] Users can sign up.
- [ ] Users can log in after they've signed up.
- [ ] Users can log out after logging in.
- [ ] Users can choose to be remembered after logging in.<sup>†</sup>
- [ ] Multiple browsers can concurrently hold permanent cookies for the same
  user.
- [ ] Logged in users should not be able to register, nor log in again.

<sup>†</sup>: "Remembering" means that users will remain logged into the site
even after completely closing their web browser.

__Note__: Do not use Devise for this task.

__Discussion topics__:
- [ ] If we wanted to add more advanced features such as email activation and
  "forgot my password", should we continue to "roll our own" authentication?

__Reference material__:
- https://www.railstutorial.org/book/log_in_log_out

__Further reading__:
- https://github.com/plataformatec/devise

__Dependencies__:
- Delete Image
