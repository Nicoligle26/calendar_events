# frozen_string_literal: true

# == Schema Information
#
# Table name: companies
#
#  id           :bigint           not null, primary key
#  name         :string
#  email        :string
#  admin        :string
#  address      :string
#  phone_number :string
#  city         :string
#  country      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Company < ApplicationRecord
  has_many :users
  has_many :events
end
