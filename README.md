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

References:

Use the following list to develop graphql output based on the models
http://graphql-ruby.org/getting_started
https://apidock.com/rails/ActiveRecord/Associations/ClassMethods/belongs_to
https://github.com/rmosolgo/graphql-ruby/issues/1881 

Migrations: 

To create/update sql table and columns with changes, you do migrations: 
https://edgeguides.rubyonrails.org/active_record_migrations.html

* Modify existing table with adding column
rails generate migration AddItemGrantedToContacts item_granted:string

* Modify existing table with removing column
rails generate migration RemoveItemGrantedFromContacts item_granted:string

* Run pending migrations
rails db:migrate

* Reset Database and rerun seed.rb 
rails db:reset