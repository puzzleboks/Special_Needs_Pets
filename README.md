# Project 2: Special Needs Pets


Special Needs Pets is a full-stack web application built in Ruby on Rails. Its purpose is to provide pet owners with a method of tracking medications for their pets with special needs.

The app utilizes four models: users, pets, needs, and treatments. Each user can have many pets, each pet can have many special needs, and each need can have many treatments. For example, I might have an English Springer Spaniel named Puzzle who has Epilepsy (need); every 8 hours he could receive 2 tablets of phenobarbitol and 2 tablets of keppra (treaments).

Currently the project has user authentication (set up with Devise) and includes sign up/log in functionality, with encrypted passwords, and an authorization flow. It accomplishes all the CRUD functionality specified in the user stories, and complete RESTful routes.

The goals for the future would be to fill out the HTML structure, improve the styling, and add calendar integration for scheduling and notifications.


### Installation Instructions

In order to install the Special Needs Pets app on your local machine, follow these steps:

1. Fork/clone [this repo](https://github.com/puzzleboks/Special_Needs_Pets)
2. Navigate to the Special Needs Pets directory
3. Run the following commands in the terminal:
```bash
$ bundle install
$ rake db:create db:migrate db:seed
```
4. Run Postgresql
5. Make sure rails server is running:
```bash
$ rails s
```

### Trello Schedule:

https://trello.com/b/baNp2PTF

### Entity Relationship Diagram:

https://www.lucidchart.com/invitations/accept/e93d5ce6-29ac-421a-b826-bfce04834f24

### User Stories:

* As a user I want to be able to sign up (create user)
* As an existing user I want to be able to log in and log out
* As a user I want to be able to edit/delete my user profile
* As a user I want to be able to add a pet
* As a user I want to be able to edit/delete pet details
* As a user I want to be able to add special needs for a pet
* As a user I want to be able to edit/delete pet needs
* As a user I want to be able to add treatments for a need
* As a user I want to be able to edit/delete pet treatments
* As a user I want to see a summary of all my treatments (daily checklist)
* As a user I want to be able to schedule of my treatments in a calendar
