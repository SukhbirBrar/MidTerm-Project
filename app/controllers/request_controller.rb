# frozen_string_literal: true

class RequestController < ApplicationController
  def index
    @requests = Request311.all
    @names = ServiceName.all
    end

  def show
    @request = Request311.all
  end
end
