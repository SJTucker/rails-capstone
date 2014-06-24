class WaitingListController < ApplicationController
  def index
    @waiting_customers = WaitingList.all
  end

  def new
    @waiting_customer = WaitingList.new
  end


end
