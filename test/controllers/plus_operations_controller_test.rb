require 'test_helper'

class PlusOperationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plus_operation = plus_operations(:one)
  end

  test "should get index" do
    get plus_operations_url
    assert_response :success
  end

  test "should get new" do
    get new_plus_operation_url
    assert_response :success
  end

  test "should create plus_operation" do
    assert_difference('PlusOperation.count') do
      post plus_operations_url, params: { plus_operation: { description: @plus_operation.description, sum: @plus_operation.sum, title: @plus_operation.title } }
    end

    assert_redirected_to plus_operation_url(PlusOperation.last)
  end

  test "should show plus_operation" do
    get plus_operation_url(@plus_operation)
    assert_response :success
  end

  test "should get edit" do
    get edit_plus_operation_url(@plus_operation)
    assert_response :success
  end

  test "should update plus_operation" do
    patch plus_operation_url(@plus_operation), params: { plus_operation: { description: @plus_operation.description, sum: @plus_operation.sum, title: @plus_operation.title } }
    assert_redirected_to plus_operation_url(@plus_operation)
  end

  test "should destroy plus_operation" do
    assert_difference('PlusOperation.count', -1) do
      delete plus_operation_url(@plus_operation)
    end

    assert_redirected_to plus_operations_url
  end
end
