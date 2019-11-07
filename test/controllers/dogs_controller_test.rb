require 'test_helper'

class DogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get dogs_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_url
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post dogs_url, params: { dog: { age: @dog.age, barker: @dog.barker, breed: @dog.breed, calm: @dog.calm, cat_friendly: @dog.cat_friendly, child_friendly: @dog.child_friendly, energetic: @dog.energetic, friendly: @dog.friendly, gender: @dog.gender, likes_big_dogs: @dog.likes_big_dogs, likes_older_dogs: @dog.likes_older_dogs, likes_puppies: @dog.likes_puppies, likes_small_dogs: @dog.likes_small_dogs, name: @dog.name, playful: @dog.playful, weight: @dog.weight } }
    end

    assert_redirected_to dog_url(Dog.last)
  end

  test "should show dog" do
    get dog_url(@dog)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_url(@dog)
    assert_response :success
  end

  test "should update dog" do
    patch dog_url(@dog), params: { dog: { age: @dog.age, barker: @dog.barker, breed: @dog.breed, calm: @dog.calm, cat_friendly: @dog.cat_friendly, child_friendly: @dog.child_friendly, energetic: @dog.energetic, friendly: @dog.friendly, gender: @dog.gender, likes_big_dogs: @dog.likes_big_dogs, likes_older_dogs: @dog.likes_older_dogs, likes_puppies: @dog.likes_puppies, likes_small_dogs: @dog.likes_small_dogs, name: @dog.name, playful: @dog.playful, weight: @dog.weight } }
    assert_redirected_to dog_url(@dog)
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete dog_url(@dog)
    end

    assert_redirected_to dogs_url
  end
end
