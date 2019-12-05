class MatcherController < ApplicationController
  def home
    require "net/http"
    require "uri"
    require "json"
    #require "httparty"
    
    allDogs = Dog.where.not(id: current_user.id)
    @dogs = []
    
    if (params[:matcher].present? && params[:matcher][:radius].present?)
      like_radius = params[:matcher][:radius].to_i
    else
      like_radius = 0
    end
    
    if (like_radius == 0)
      @dogs = allDogs
    else
      dogList = []
      for dog in allDogs
        p "lllllllllllllaAAAAAAlll"
        other_zip = dog.zipcode
        zipcode_url = "https://www.zipcodeapi.com/rest/GmiyTSTTuReA0ppnY5NodOpUIjuC1TBX4zf9zVGMsYjkReSFb8AJLdhSJAHqn27M/distance.json/" + "90024" + "/" + other_zip.to_s + "/mile"
        uri = URI.parse(zipcode_url)
        httpResponse = Net::HTTP.get_response(uri)
        zipDistance = JSON.parse(httpResponse.body)

        dist = (other_zip.to_i - Dog.find(current_user.id).zipcode.to_i).abs
        p dist
        p like_radius
        if dist < like_radius.to_i
          dogList.append(dog)
        end
        end
      @dogs = dogList
    end
    
    sender = User.find(current_user.id)
    convos = current_user.mailbox.conversations
    talked = []
    convos.each do |convo|
      ids = convo.recipients.map(&:id)
      ids.each do |id|
        if (id != current_user.id)
          talked.append(id)
        end
      end
    end
    
    @talked_to = talked
    
  end
  
  def matcher_params
    params.permit(:radius)
  end
end
