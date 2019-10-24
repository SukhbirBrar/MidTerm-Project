class RequestController < ApplicationController
  def index
    @request = Request311.all
  end
end
