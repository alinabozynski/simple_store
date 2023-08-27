# Simple Store

A simple Ruby on Rails store with a Product Model containing title, price, description, and stock quantity properties, 
in which title, price, and stock quantity are required.
Product properties were populated using the Faker Gem. 

A Category Model was created with a name property. 

A migration was used to add a foreign key reference from the Product model a the category with a belongs to/has many association.

Data for the second phase of the project was provided through a given CSV file.

## Project Details:

* Bundler: 2.3.23
* Ruby version: 2.7.6
* Rails: 6.1.4.1
* SQLite3: 1.4
* Puma: 5.0
* sass-rails: 6
* webpacker: 5.0
* turbolinks: 5
* jbuilder: 2.7

Used Faker Gem for first phase of project before adding Category Model and loading data with CSV file.

## To Run this Application

Run in Windows Subsystem for Linux (Ubuntu) with Ruby on Rails and rbenv installed.

Clone repository in WSL.

Run `rbenv install 2.7.6` to manage different Ruby versions when running the next commands.

Run `bundle install` to ensure all dependencies and gems are installed.

Run `bundle exec rake webpacker:install` to use Webpacker as the Rails wrapper with standard configuration.

Run `rails db:migrate` to migrate the database.

Run `rails db:seed` to populate the database.

Run `rails s` to start the server on your localhost, and navigate to the specified port.

Finally, once you see the "Yay! You're on Rails" screen, update URL to /products to navigate to the store products home page.
