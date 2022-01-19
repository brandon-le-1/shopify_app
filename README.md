# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Inventory Tracking App
This inventory application is a Ruby on Rails web application that allows a logistics company to keep track of inventory. 

#### What Can I Do With This Inventory Tracking App?
* Create inventory items
* Edit existing items
* Delete existing items
* View a list of all existing inventory items
* Export list of all existing inventory items to a CSV

#### Stack
* Ruby on Rails
* HTML
* RSpec
* PostgreSQL

# Local Setup
* Versions
  * Rails 7.0.1
  * Ruby 3.0.3
* Fork and clone the repository
* `cd` in your local repo version and run the following commands:
   * To install the gems:
     * `bundle` (you may have to `bundle update` and then try again if this command fails)   
   * To setup the database:
     * `rails db:create`
     * `rails db:migrate`
     * `rails db:seed`
* Start a devlopment server with the command `rails server` or `rails s`
* You should now be able to view/use the app at [http://localhost:3000](http://localhost:3000)

# Test Suite
* Run the test suite with `bundle exec rspec`
* All tests should be passing with a % test coverage



