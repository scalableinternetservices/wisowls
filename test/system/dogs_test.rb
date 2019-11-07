require "application_system_test_case"

class DogsTest < ApplicationSystemTestCase
  setup do
    @dog = dogs(:one)
  end

  test "visiting the index" do
    visit dogs_url
    assert_selector "h1", text: "Dogs"
  end

  test "creating a Dog" do
    visit dogs_url
    click_on "New Dog"

    fill_in "Age", with: @dog.age
    check "Barker" if @dog.barker
    fill_in "Breed", with: @dog.breed
    check "Calm" if @dog.calm
    check "Cat friendly" if @dog.cat_friendly
    check "Child friendly" if @dog.child_friendly
    check "Energetic" if @dog.energetic
    check "Friendly" if @dog.friendly
    fill_in "Gender", with: @dog.gender
    check "Likes big dogs" if @dog.likes_big_dogs
    check "Likes older dogs" if @dog.likes_older_dogs
    check "Likes puppies" if @dog.likes_puppies
    check "Likes small dogs" if @dog.likes_small_dogs
    fill_in "Name", with: @dog.name
    check "Playful" if @dog.playful
    fill_in "Weight", with: @dog.weight
    click_on "Create Dog"

    assert_text "Dog was successfully created"
    click_on "Back"
  end

  test "updating a Dog" do
    visit dogs_url
    click_on "Edit", match: :first

    fill_in "Age", with: @dog.age
    check "Barker" if @dog.barker
    fill_in "Breed", with: @dog.breed
    check "Calm" if @dog.calm
    check "Cat friendly" if @dog.cat_friendly
    check "Child friendly" if @dog.child_friendly
    check "Energetic" if @dog.energetic
    check "Friendly" if @dog.friendly
    fill_in "Gender", with: @dog.gender
    check "Likes big dogs" if @dog.likes_big_dogs
    check "Likes older dogs" if @dog.likes_older_dogs
    check "Likes puppies" if @dog.likes_puppies
    check "Likes small dogs" if @dog.likes_small_dogs
    fill_in "Name", with: @dog.name
    check "Playful" if @dog.playful
    fill_in "Weight", with: @dog.weight
    click_on "Update Dog"

    assert_text "Dog was successfully updated"
    click_on "Back"
  end

  test "destroying a Dog" do
    visit dogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dog was successfully destroyed"
  end
end
