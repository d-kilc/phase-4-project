class UserDetailSerializer < ActiveModel::Serializer
  attributes :id
  has_many :user_items
end
