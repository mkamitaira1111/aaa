require 'test_helper'

class MedicineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medicine_index_url
    assert_response :success
  end

  test "should get create" do
    get medicine_create_url
    assert_response :success
  end

  test "should get new" do
    get medicine_new_url
    assert_response :success
  end

  test "should get eit" do
    get medicine_eit_url
    assert_response :success
  end

  test "should get show" do
    get medicine_show_url
    assert_response :success
  end

  test "should get upate" do
    get medicine_upate_url
    assert_response :success
  end

  test "should get destroy" do
    get medicine_destroy_url
    assert_response :success
  end

end
