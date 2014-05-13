require 'test_helper'

Cell::Base.class_eval do
  include Rails.application.routes.url_helpers # FIXME: that SUCKS.

  append_view_path "test/fake_app/cells/"
end


class KaminariCellsTest < ActionController::TestCase
  tests UsersController

  setup do
    @routes = Rails.application.routes

    50.times {|i| User.create! :name => "user#{i}"}
  end

  test "rendering normal cell" do
    get :index
    assert_equal "<p>1</p>\n\n", @response.body
  end

  test "rendering view model cell" do
    get :show, :id => 1
    assert_equal "<p>1</p>\n\n", @response.body
  end
end