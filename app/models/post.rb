# frozen_string_literal: true
class Post < ApplicationRecord
  belongs_to :user
  validates :content, :like, :user, presence: true
end
