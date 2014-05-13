require 'test_helper'

Cell::Base.class_eval do
  include Rails.application.routes.url_helpers # FIXME: that SUCKS.
end


class KaminariCellsTest < ActionController::TestCase
  tests UsersController

  setup do
    @routes = Rails.application.routes
    # Cell::Base._routes = @routes

    50.times {|i| User.create! :name => "user#{i}"}
  end

  test "rendering normal cell" do
    get :index
  end
end