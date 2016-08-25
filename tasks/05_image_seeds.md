---
title: Image Seeds
assignee: mlewisno
labels: unstarted
---

#### As a developer I want at least 20 images to be created when I setup the database.

__Acceptance criteria__:
- [ ] After running `rake db:setup` at least 20 unique images are shown in the
  homepage.
- [ ] When a new app is deployed on heroku (e.g., every review app), that app
  automatically has at least 20 unique images on its homepage.

__Dependencies__:
- Image Index
