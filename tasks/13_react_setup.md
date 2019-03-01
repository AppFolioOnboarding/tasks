---
title: React Setup

---

#### As a developer I want to be able to integrate React into my rails application.

__Story__:

Your users are loving the image sharer application, and want to give their opinions on how certain features can be improved. Using React and MobX, we will enable users to submit feedback for the application.

We will practice the act of “slicing” stories into small, quick to test and deliver parts. For this issue, you will be asked to add footer text to the existing boilerplate code. There are existing TODO comments in the code.

In `app/assets/javascripts/image_sharing` you will find the starting code for this feedback form. The rundown of directories are:
- `components` holds all React components, potentially namespaced by more directories
- `services` holds the service objects you may need - some examples include api calls, asynchronous I/O, etc.
- `stores` holds MobX state stores (see references/documentation related to MobX)
- `utils` holds general purpose helper modules that can be shared across different parts of the client application
- `test` holds tests for all functional code in the application. It's directory structure usually mimics that of the source. You may need to create this directory if it doesn't already exist.

We've created a starting point for you in the form of a branch in your repo called `ImageSharingReactSetup`. The first step is to rebase the `ImageSharingReactSetup` branch on top of your updated master branch.

Happy coding!


__Acceptance criteria__:
- [ ] The React client app loads properly and a user can access the feedback form
- [ ] There is a footer at the bottom of the feedback form that reads: “Copyright: Appfolio Inc. Onboarding”
- [ ] There is a unit test that checks that the footer text exists

__Discussion Topics__:
- [ ] What is the difference between stateful and stateless components in React?
- [ ] Why might it be good to consider stateless components?
- [ ] How might one set up a test environment to run for react?

__References__:
* https://reactjs.org/tutorial/tutorial.html
* https://mobx.js.org/getting-started.html
* https://airbnb.io/enzyme/
* https://mochajs.org/
* https://nodejs.org/api/assert.html
* https://www.chaijs.com/guide/
