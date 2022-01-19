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

#### Database Schema
![Screenshot](/screenshots/schema_github.jpg)


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
* Start a development server with the command `rails server` or `rails s`
* You should now be able to view/use the app at [http://localhost:3000](http://localhost:3000)

# Test Suite
* Run the test suite with `bundle exec rspec`
* All tests should be passing with ~95% test coverage

# Future Iterations



