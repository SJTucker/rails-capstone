class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def after_sign_up_path_for(resource)
    new_customer_path
  end

  def update
    super
  end
end
