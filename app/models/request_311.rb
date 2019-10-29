# frozen_string_literal: true

class Request311 < ApplicationRecord
  self.table_name = 'request_311s'
  belongs_to :service_name
  belongs_to :service_area

  validates :service_name, :service_area, presence: true
  validates :ward, :neighbourhood, presence: true
end
