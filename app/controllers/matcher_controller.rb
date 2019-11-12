class MatcherController < ApplicationController
  def home
    @dogs = Dog.all
  end
end
