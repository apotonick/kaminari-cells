# require 'rails/all'
require 'action_controller/railtie'
require 'action_view/railtie'
require 'active_record'

require 'fake_app/config'


# config
app = Class.new(Rails::Application)
app.config.secret_token = '3b7cd727ee24e8444053437c36cc66c4'
app.config.session_store :cookie_store, :key => '_myapp_session'
app.config.active_support.deprecation = :log
app.config.eager_load = false
# Rais.root
app.config.root = File.dirname(__FILE__)
Rails.backtrace_cleaner.remove_silencers!
app.initialize!

# routes
app.routes.draw do
  resources :users
end

#models
require 'fake_app/models'

# controllers
class ApplicationController < ActionController::Base; end
class UsersController < ApplicationController
  def index
    @users = User.all.page params[:page]
    render :inline => <<-ERB
<%= render_cell(:user, :show, @users) %>
ERB
  end
end

# helpers
Object.const_set(:ApplicationHelper, Module.new)
