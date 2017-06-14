# README
App running on Ruby 2.3.1 and Rails 5.1
Uses gems haml-rails. For all gems, see Gemfile

This app is meant to help manage a library of ethics cases, and allow a user to search by title, author, and subject. All of these tables are related through HABTM. 

Tests include making sure all fields have input before they are saved, and in case, :year, that a user can only enter four numbers. 

In its current iteration, a case controller has been generated, but much more work needs to be done on the front end. 

* ...
./
├── assets
│   ├── config
│   │   └── manifest.js
│   ├── images
│   ├── javascripts
│   │   ├── application.js
│   │   ├── cable.js
│   │   └── channels
|   |   |_case.coffee
         |_cases.coffee
         |_home.coffee
|
│   └── stylesheets
│       └── application.css
         |_case.scss
         |_cases.scss
         |_home.scss
├── channels
│   └── application_cable
│       ├── channel.rb
│       └── connection.rb
├── controllers
│   ├── application_controller.rb
│   └── concerns
├── helpers
│   └── application_helper.rb
    |_ case.helper.rb
    |_cases.helper.rb
    |_home.helper.rb
├── jobs
│   └── application_job.rb
├── mailers
│   └── application_mailer.rb
├── models
│   ├── application_record.rb
│   ├── concerns
│   ├── case.rb
│   ├── subject.rb
│   └── author.rb
└── views
|_case
    |_index.haml.html
   └── layouts
        ├── application.html.erb
        ├── mailer.html.erb
        └── mailer.text.erb
