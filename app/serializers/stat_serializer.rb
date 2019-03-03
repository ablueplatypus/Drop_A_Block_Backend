class StatSerializer < ActiveModel::Serializer
  attributes :id, :high_score, :line_clear, :user_id
  belongs_to :user
end
