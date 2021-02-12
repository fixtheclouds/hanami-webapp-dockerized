require_relative 'base_object'
require_relative 'user_type'

module Types
  class PostType < BaseObject
    graphql_name 'Post'

    field :id, ID, null: false
    field :title, String, null: true
    field :body, String, null: false
    field :user, UserType, null: false,
                           resolve: ->(obj, _, _) { UserRepository.new.find(obj.user_id) }
    field :created_at, Int, null: false
    field :updated_at, Int, null: false
  end
end
