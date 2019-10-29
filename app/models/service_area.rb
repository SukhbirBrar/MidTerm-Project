# frozen_string_literal: true

class ServiceArea < ApplicationRecord
  has_many :request_311s
  validates :service_area, presence: true
end
