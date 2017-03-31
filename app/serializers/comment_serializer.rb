# frozen_string_literal: true
class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :editable

  def editable
    scope == object.user
  end
end
