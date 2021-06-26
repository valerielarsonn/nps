require "test_helper"

class NpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @np = nps(:one)
  end

  test "should get index" do
    get nps_url, as: :json
    assert_response :success
  end

  test "should create np" do
    assert_difference('Np.count') do
      post nps_url, params: { np: { image: @np.image, name: @np.name, posting: @np.posting } }, as: :json
    end

    assert_response 201
  end

  test "should show np" do
    get np_url(@np), as: :json
    assert_response :success
  end

  test "should update np" do
    patch np_url(@np), params: { np: { image: @np.image, name: @np.name, posting: @np.posting } }, as: :json
    assert_response 200
  end

  test "should destroy np" do
    assert_difference('Np.count', -1) do
      delete np_url(@np), as: :json
    end

    assert_response 204
  end
end
