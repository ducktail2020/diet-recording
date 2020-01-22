require 'test_helper'

class SampleControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sample_controller = sample_controllers(:one)
  end

  test "should get index" do
    get sample_controllers_url, as: :json
    assert_response :success
  end

  test "should create sample_controller" do
    assert_difference('SampleController.count') do
      post sample_controllers_url, params: { sample_controller: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show sample_controller" do
    get sample_controller_url(@sample_controller), as: :json
    assert_response :success
  end

  test "should update sample_controller" do
    patch sample_controller_url(@sample_controller), params: { sample_controller: {  } }, as: :json
    assert_response 200
  end

  test "should destroy sample_controller" do
    assert_difference('SampleController.count', -1) do
      delete sample_controller_url(@sample_controller), as: :json
    end

    assert_response 204
  end
end
