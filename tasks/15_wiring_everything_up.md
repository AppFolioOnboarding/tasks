---
title: Wiring everything up

---

#### As a developer I want to be able to record the feedback collected in the backend.

__Story__:

You now have a working form that allows users to write up their feedback. The last step is to send an API request to record it. We will not be implement any handling of the request other than the required routes, controllers, and actions for it to function.

Happy coding!


__Acceptance criteria__:
- [ ] There is a new PostFeedbackService service object that uses the `post` method export from `utils/helpers.js` to send an API request with the form data (POST body structure is up to you)
- [ ] There is a new API controller (with namespace) `Api::FeedbacksController` that has an action to handle the feedback request, which always returns a 200 status code with no content
- [ ] The path that accepts the request is `/api/feedbacks`
- [ ] When the user submits the request, a message is displayed stating that it was successful

__Discussion Topics__:
- [ ] How might you be able to provide the form state to the PostFeedbackService that uses it to send the request?

__References__:
* https://reactjs.org/tutorial/tutorial.html
* https://mobx.js.org/getting-started.html
* https://sinonjs.org/
