# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :users
  belongs_to :company
end
