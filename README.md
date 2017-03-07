# registration
project description step by step:
================================
1)create directory for a project.
2)first create gemfile.
enter the following data in gem file:

Gemfile
====================================
source "http://rubygems.org"

gem "sinatra-activerecord"
gem "rake"
gem "sqlite3"

3)open terminal,load the current directory and enter "bundle install"
$>bundle install

4)all gems required for project are deployed.

5)create a rakefile and enter the following code.

Rakefile
=====================================
require "./app"
require "sinatra/activerecord/rake"

6)create the "app.rb" file in main directory.

app.rb
======
require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:myblogdb.sqlite3"

get '/' do
"sinatra web application."
end

7)open terminal,enter the following rake commands for database migration

terminal
==========
$>rake db:create
$>rake create_migration NAME=create_pages
To know rake commands enter rake -T
after performing these commands,there is a folder called "db" inside your root directory.
open "db"
open "migration" folder,you can see the migrated file name "2017224064723_create_pages"
click on that file
enter the following data in change method

2017224064723_create_pages
==========================

class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.text :firstname
      t.text :lastname
      t.string :email
      t.text :address
  end
  end
  drop_table :pages

end


open terminal,enter the following command in terminal
terminal
=========
$>rake db:migrate

now the database table "pages" is created.we need a Page model. 
 
Add a models.rb file to the project folder and require this file into the main application file, 
app.rb. In the models.rb file,
create the Post class (model) that inherits from Active Record.

Create a models.rb file within the project folder and add the Page class:

models.rb
=========
class Pages < ActiveRecord::Base

end

Require the newly created models.rb file in app.rb:
```ruby
#app.rb 
========
require './app'
require "sinatra/activerecord"  
set :database, "sqlite3:myblogdb.sqlite3"
require "./models.rb"



