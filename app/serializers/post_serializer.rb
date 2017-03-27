# frozen_string_literal: true
class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :editable

  def editable
    scope == object.user
  end
end
