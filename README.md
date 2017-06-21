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


module UsersHelper
  def logged_in?
    !!session[:user_id]
  end

    def current_user
    User.find(session[:user_id])
  end

  def current_username
    User.find(session[:user_id]).username
  end
end