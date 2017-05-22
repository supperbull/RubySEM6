require 'test_helper'

class KatalogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @katalog = katalogs(:one)
  end

  test "should get index" do
    get katalogs_url
    assert_response :success
  end

  test "should get new" do
    get new_katalog_url
    assert_response :success
  end

  test "should create katalog" do
    assert_difference('Katalog.count') do
      post katalogs_url, params: { katalog: { nazwa: @katalog.nazwa, opis: @katalog.opis, url: @katalog.url } }
    end

    assert_redirected_to katalog_url(Katalog.last)
  end

  test "should show katalog" do
    get katalog_url(@katalog)
    assert_response :success
  end

  test "should get edit" do
    get edit_katalog_url(@katalog)
    assert_response :success
  end

  test "should update katalog" do
    patch katalog_url(@katalog), params: { katalog: { nazwa: @katalog.nazwa, opis: @katalog.opis, url: @katalog.url } }
    assert_redirected_to katalog_url(@katalog)
  end

  test "should destroy katalog" do
    assert_difference('Katalog.count', -1) do
      delete katalog_url(@katalog)
    end

    assert_redirected_to katalogs_url
  end
end
