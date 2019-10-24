# frozen_string_literal: true

class ServiceName < ApplicationRecord
  has_many :request_311s
  validates :service_name, presence: true
  validates :id, presence: false
end
