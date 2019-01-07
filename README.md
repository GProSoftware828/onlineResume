# George Payne - Portfolio

This is my digital resume. I built it while studying the online class Dissecting Ruby on Rails 5 - Become a Professional Developer instructor Jordan Hudgens, CTO at devCamp.

This application is a full feature capable Rails app that has several gems and capacity to continue building out features such as further authorization, Action Cable comments, and various styling techniques to name a few. 

## Introduction

This application uses three controllers, 8 models, a dozen migration files, and the following gems:

* [devise](https://rubygems.org/gems/devise)

* [petergate](https://rubygems.org/gems/petergate)

* [bootstrap](https://rubygems.org/gems/bootstrap)

* [byebug](https://rubygems.org/gems/byebug)

* [redis](https://rubygems.org/gems/redis)

* others

## Versions

#### Ruby- 2.4.0

#### Rails- 5.1.4

## Syntax

Dot notation is RECOMMENDED over bracket notation for method calls:

**For Example-**
```ruby
def first_name
	self.name.split.first
end

def last_name
	self.name.split.last
end
```
The model and controller classes inherit from the application class:

**For Example-**
```ruby
class User < ApplicationRecord
```
The views utilize embedded ruby for the models:

**For Example-**
```ruby
     <%= yield %>
```
## Configuration

Ready for use upon download of directory.

Fixes implemented for Heroku production version:

1. added Security Key via terminal after updating 'config/application.rb' line 12
2. updated 'config/environments/production.rb' line 71
3. completed merging in git branch overlapping due to herkou push error referring to unknown object >>
4. fixed Uglifer gem settings 'config/environments/production.rb' line 27
5. Few others, mostly typos coming up in Heroku logs
NOTE: Please download latest production version and run in local host- Heroku is not running the Bootstrap collase nav or background video in free dynos mode.
