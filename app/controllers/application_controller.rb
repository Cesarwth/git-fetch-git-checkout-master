class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_root_url
    else
      manager_root_url
    end
  end

end
