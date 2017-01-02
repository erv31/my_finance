require 'test_helper'

class MinusOperationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minus_operation = minus_operations(:one)
  end

  test "should get index" do
    get minus_operations_url
    assert_response :success
  end

  test "should get new" do
    get new_minus_operation_url
    assert_response :success
  end

  test "should create minus_operation" do
    assert_difference('MinusOperation.count') do
      post minus_operations_url, params: { minus_operation: { description: @minus_operation.description, sum: @minus_operation.sum, title: @minus_operation.title } }
    end

    assert_redirected_to minus_operation_url(MinusOperation.last)
  end

  test "should show minus_operation" do
    get minus_operation_url(@minus_operation)
    assert_response :success
  end

  test "should get edit" do
    get edit_minus_operation_url(@minus_operation)
    assert_response :success
  end

  test "should update minus_operation" do
    patch minus_operation_url(@minus_operation), params: { minus_operation: { description: @minus_operation.description, sum: @minus_operation.sum, title: @minus_operation.title } }
    assert_redirected_to minus_operation_url(@minus_operation)
  end

  test "should destroy minus_operation" do
    assert_difference('MinusOperation.count', -1) do
      delete minus_operation_url(@minus_operation)
    end

    assert_redirected_to minus_operations_url
  end
end
