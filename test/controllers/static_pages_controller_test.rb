require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  
  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get about" do
  	get static_pages_about_path
  	assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get contact do" do
    get static_pages_contact_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end
end
