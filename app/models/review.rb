# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :room
  belongs_to :user
end
