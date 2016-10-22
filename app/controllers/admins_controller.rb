class AdminsController < ApplicationController
  def home
  end
  def after_sign_in_path_for(resource)
    "/signedinuserprofile"
  end

end
