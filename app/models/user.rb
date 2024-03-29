# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
end
