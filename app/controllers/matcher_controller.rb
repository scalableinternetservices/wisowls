class MatcherController < ApplicationController
  def home
    @dogs = Dog.all
    
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
