class WaitingCustomer < ActiveRecord::Base
  attr_accessor :email
  belongs_to :user

  def email=(email)
    self.user = User.find_by_email(email)
  end
end
