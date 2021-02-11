require_relative 'post_type'
require_relative 'user_type'

module Types
  class QueryType < GraphQL::Schema::Object
    description 'The query root for the schema'

    field :posts, type: [PostType], null: true do
      description 'Retrieve all posts'
    end

    field :user, type: UserType, null: true do
      description 'Fetch user'
      argument :id, ID, required: true
    end

    def posts
      ::PostRepository.new.all
    end

    def user(id:)
      ::UserRepository.new.find(id)
    end
  end
end
