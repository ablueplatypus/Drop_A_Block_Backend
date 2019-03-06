class StatSerializer < ActiveModel::Serializer
  attributes :high_score, :line_clear, :initials, :mod_high_score
  # def username
  #   # byebug
  #   object.user.username
  # end

  def mod_high_score
    ("00000000" + object.high_score.to_s)[-6..-1]
  end
end
