# Authentication in Sinatra

### What is authentication?
* way to verify that the user is who they say they are

### What is statelessness in HTTP?
* every request is independent and isolated from every other request
* state (data) is not carried across requests

### How do we transfer state across requests in Sinatra when we need to?
* session
* ruby hash that stores some info about the current browsing session, like a way to identifier the user, maybe shopping cart contents?
* essentially server-side version of browser cookie
* help us verify the authenticity of users across requests

### How do we use a session to log a user in?
* have them enter their identifying info into a form
* look at the form data and match it with something we have saved about them
* if it matches, let them enter private pages that only logged in users get

### How do we log a user out?
* clear the session data!
