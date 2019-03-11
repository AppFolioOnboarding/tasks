---
title: Save Image Link
assignees:
  - HaominZhang
---

#### As a user I want to save a link to an image.

__Story__:

Even though our main app has been created in Rails, we are going to configure our 
landing page to use React (use the references listed below to get that going). 
Once you have your React landing page rendering, it is time
to introduce our first feature! 

In general, we want to deliver value to our
customers as fast as possible. As a result, we have decided that we want our
users to be able to save links to images, and immediately see that we have
saved the URL to the image.

One could argue that simply saving the image, and not showing it, provides some
value. Yes, you could split this story here. However, because saving image URLs
and viewing those images are both relatively small additions that work well
together, it is acceptable to complete them together. Note, on the other hand,
that we do not yet want to implement the image index. Its addition adds too
much complexity, so we’ll save that for a future story.

In general, feature addition, or stories, should be split into the smallest
deliverable chunk that provides value to your users with the caveat that it
might make sense to combine two, sometimes more, tiny and related features into
a single story.

For this story, we will only save the image on the frontend and will not persist to the database. Also, for this project 
we will not use MobX, Redux or any other flux state management for the app and will only use React state.

__Acceptance criteria__:
- [ ] The landing page, `/` uses React to provide some content.
- [ ] The landing page shows the submission form.
- [ ] The link is entered through a form.
- [ ] After the form is submitted, the image is displayed on the page and the submission form input fields are cleared.

__Dependencies__:
- Deployment Environment

__References__:
* https://medium.com/react-on-rails/free-tutorial-how-to-use-react-with-webpacker-and-rails-5-1-92af8e8d9d63
* https://github.com/rails/webpacker#react
* https://sites.google.com/a/appfolio.com/eng/resources/code/front-end-development
* https://reactjs.org/tutorial/tutorial.html

__Note__: Many image sharing sites will permit one to upload images, or
download images when provided a link. For this project we will only work with
the link, i.e., URL, to various images.
