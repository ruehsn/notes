Scaffolding 
 rails generate scaffold Dataset name:string program:string statement:string job:string step:string breadcrumb:string
 rails generate scaffold Program name:string desc:text
 rails destroy scaffold Program
 
 rails generate scaffold Player name:string 
 rails generate scaffold Hand bid:integer bidder_id:integer color:string bidder_win:boolean game_id:integer 
 rails generate scaffold Game players:integer player1_id:integer player2_id:integer player3_id:integer player4_id:integer player5_id:integer player6_id:integer order:string team1_score:integer team2_score:integer team3_score:integer team4_score:integer team5_score:integer winning_team:integer
 rails g migration AddSearchNameToDataset search_name:string 

 #This will destroy your db and then create it and then migrate your current schema:
rake db:drop db:create db:migrate
 
rails _5.0.0.rc1_ --version  # locks the version rails uses when creating new apps
rails about   #shoud information about current rails install
bundle exec rails about  #same as above
------- associations


class Author < ApplicationRecord
  has_many :books, dependent: :destroy
end
 
class Book < ApplicationRecord
  belongs_to :author
end


	
	    <% @steps.each{|s| %>
<%=s.job %>
<%}%>


rails test #runs test in Rails application

--------- test controllers
    assert_select =#columns #side a=, minimum: 4
    assert_select =#main .entry=, 3
    assert_select =h3=, =Programming Ruby 1.9=
    assert_select =.price=, /\$[,\d]+\.\d\d/

--------- Rails configuration settings:
rails dev:cache  # turns on caching in development
	
	
	
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
---------- Git Notes --------------
http://gitref.org/
git config --global --add user.name "Sam Ruby"
git config --global --add user.email rubys@intertwingly.net
git config --global --list  #verify setup

git init
git add .
git commit -m "Depot Scaffold"
git checkout .  #roles back changes 
git commit -a -m =Validation!=  #adds and commits changs to database


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
---------- ruby notes --------------------
#declaring a hash with symbols:
inst_section = {
  cello:    =string= ,
  clarinet: =woodwind= ,
  drum:     =percussion= 
}

#handling nil
a || b
The expression a || b evaluates a. If it isn ’t false or nil, then evaluation stops,
and the expression returns a. Otherwise, the statement returns b. This is
a common way of returning a default value if the first value hasn ’t been
set.


a ||= b
The assignment statement supports a set of shortcuts: a op= b is the same
as a = a op b. This works for most operators.
count += 1 # same as count = count + 1
price *= discount # price = price * discount
count ||= 0 # count = count || 0
So, count ||= 0 gives count the value 0 if count doesn ’t already have a value.


|-- app
|   |-- assets
|   |   |-- images
|   |   |-- javascripts
|   |   |   =-- application.js
|   |   =-- stylesheets
|   |       =-- application.css
|   |-- controllers
|   |   |-- application_controller.rb
|   |   =-- concerns                       Shared Controller Logic
|   |-- helpers                            Shared Viewer Logic
|   |   =-- application_helper.rb
|   |-- mailers                            
|   |-- models                         
|   |   =-- concerns                       Shared Model logic
|   =-- views                              
|       =-- layouts                        
|           =-- application.html.erb       
|-- bin
|   |-- bundle
|   |-- rails
|   |-- rake
|   |-- setup
|   =-- spring
|-- config
|   |-- application.rb
|   |-- boot.rb
|   |-- database.yml
|   |-- environment.rb
|   |-- environments
|   |   |-- development.rb
|   |   |-- production.rb
|   |   =-- test.rb
|   |-- initializers
|   |   |-- assets.rb
|   |   |-- backtrace_silencers.rb
|   |   |-- cookies_serializer.rb
|   |   |-- filter_parameter_logging.rb
|   |   |-- inflections.rb
|   |   |-- mime_types.rb
|   |   |-- session_store.rb
|   |   =-- wrap_parameters.rb
|   |-- locales
|   |   =-- en.yml
|   |-- routes.rb
|   =-- secrets.yml
|-- config.ru
|-- db
|   =-- seeds.rb
|-- Gemfile
|-- Gemfile.lock
|-- lib
|   |-- assets
|   =-- tasks
|-- log
|-- public
|   |-- 404.html
|   |-- 422.html
|   |-- 500.html
|   |-- favicon.ico
|   =-- robots.txt
|-- Rakefile
|-- README.rdoc
|-- test
|   |-- controllers
|   |-- fixtures
|   |-- helpers
|   |-- integration
|   |-- mailers
|   |-- models
|   =-- test_helper.rb
|-- tmp
|   =-- cache
|       =-- assets
=-- vendor
=-- assets
    |-- javascripts
    =-- stylesheets