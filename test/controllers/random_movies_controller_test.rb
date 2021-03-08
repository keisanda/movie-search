require "test_helper"

class RandomMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @random_movie = random_movies(:one)
  end

  test "should get index" do
    get random_movies_url, as: :json
    assert_response :success
  end

  test "should create random_movie" do
    assert_difference('RandomMovie.count') do
      post random_movies_url, params: { random_movie: { name: @random_movie.name, text: @random_movie.text, title: @random_movie.title, user_id: @random_movie.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show random_movie" do
    get random_movie_url(@random_movie), as: :json
    assert_response :success
  end

  test "should update random_movie" do
    patch random_movie_url(@random_movie), params: { random_movie: { name: @random_movie.name, text: @random_movie.text, title: @random_movie.title, user_id: @random_movie.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy random_movie" do
    assert_difference('RandomMovie.count', -1) do
      delete random_movie_url(@random_movie), as: :json
    end

    assert_response 204
  end
end
