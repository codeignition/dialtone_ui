class CallController < ApplicationController
  def index
  end

  def make_call
    participants = [params["my_phone_number"],params["other_phone_number"]]
    participants.reject! { |c| c.blank? }

    AdhearsionClient.call(participants.join(","))
    redirect_to "/"
  end
end
