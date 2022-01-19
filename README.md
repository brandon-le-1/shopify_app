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
* CSS
* RSpec
* PostgreSQL

#### Gems Added 
* 'rspec-rails' was used for testing [https://github.com/rspec/rspec-rails](https://github.com/rspec/rspec-rails)
* 'pry' was used for debugging [https://github.com/pry/pry](https://github.com/pry/pry)
* 'simplecov' was used to check test coverage [https://github.com/simplecov-ruby/simplecov](https://github.com/simplecov-ruby/simplecov)
* 'shoulda-matchers' was used in addition to rspec for testing [https://github.com/thoughtbot/shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* 'figaro' was used to add environmental variables in the database .yml file [https://github.com/laserlemon/figaro](https://github.com/laserlemon/figaro)
* 'pg' was so I could utilize PostgreSQL as my database [https://github.com/ged/ruby-pg](https://github.com/ged/ruby-pg)

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
  * If you run into issues spinning up the app locally, it may help to make sure your Node is up to date as well 

# Test Suite
* Run the test suite with `bundle exec rspec`
* All tests should be passing with ~95% test coverage

# Future Iterations
* Add more testing - my feature tests only cover happy paths. It would be beneficial to test sad paths as well. I would also like to test the CSV generation functionality better.
* Improve styling - my styling with the time constraints is very basic. If I had more time, I would improve my styling greatly and look into implementing something like bootstrap.




