---
title: Image Seeds
assignees:
  - mlewisno
---

#### As a developer I want at least 20 images to be created when I setup the database.

__Story__:

Working on this application has been a lot of fun, right? You are fast
becoming a git expert, and an expert at working with a deployment
pipeline. Speaking of development and deployment pipelines, is it not pretty
annoying that everytime a new deployment is created it starts out with an empty
database? It seems like everytime a review application is created we need to
manually add a handful of images in order to manually test the
application. Would it not be great if each deployment was created with a
handful of existing images?

__Acceptance criteria__:
- [ ] After running `rake db:setup` at least 20 unique images are shown in the
  homepage.
- [ ] When a new app is deployed on heroku (e.g., every review app), that app
  automatically has at least 20 unique images on its homepage.

__Dependencies__:
- Image Index
