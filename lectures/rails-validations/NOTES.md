* Why do we use data validation?
    * protect our db and our site overall from BAD data

* What is bad data? Is it the same as malicious data?
    * not necessarily - malicious data would be someone intentionally trying to mess up your db or site (sql injection)
    * bad data could be user error or user misusing app, submitting blank records, duplicate records, nonsensical records (entering a number when a word is expected)

* Where do we define validations?
    * model
* Does it have to be the model?
    * we could validate data in the controller or the db or the views
* Why do we define them in the model?
    * db agnostic - we can switch the db we're using
    * not crowd controller with data-concerned logic
    * prevent user from bypassing view-level validations

* When do validations get triggered?
   * right before record is saved to the db (`create`, `save`, `update`)
   * when we call `valid?`

* How can we see if and why a record failed validation?
   * use the `errors` object!

# feature request: make inclusion range for item priority dynamic based on length of user's wishlist