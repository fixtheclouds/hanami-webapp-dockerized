require_relative 'post_type'

module Types
  class QueryType < GraphQL::Schema::Object
    description 'The query root for the schema'

    field :posts, type: PostType, null: true do
      description 'Retrieve all posts'
    end

    def posts
      ::PostRepository.all
    end
  end
end
