class MatcherController < ApplicationController
  def home
  require "net/http"
  require "uri"
  require "json"
  #require "httparty"
  
    @alldogs = Dog.all
    like_radius = params[:radius]
    
     for dog in @alldogs
      other_zip = dog.zipcode
      zipcode_url = "https://www.zipcodeapi.com/rest/GmiyTSTTuReA0ppnY5NodOpUIjuC1TBX4zf9zVGMsYjkReSFb8AJLdhSJAHqn27M/distance.json/" + "90024" + "/" + other_zip.to_s + "/mile"
      uri = URI.parse(zipcode_url)
      httpResponse = Net::HTTP.get_response(uri)
      zipDistance = JSON.parse(httpResponse.body)
      
      if like_radius < zipDistance["distance"]
        (@dogs ||= []) << :dog
      end
      
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
end
