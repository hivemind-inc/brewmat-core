class RoasterController < ApplicationController
  def index
    @home_page = true
    @vendors = Vendor.all.limit(21)
  end
end
