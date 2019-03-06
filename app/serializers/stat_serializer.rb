class StatSerializer < ActiveModel::Serializer
  attributes :high_score, :line_clear, :initials
  # def username
  #   # byebug
  #   object.user.username
  # end

end
