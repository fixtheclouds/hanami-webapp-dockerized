require_relative 'post_type'
require_relative 'user_type'

module Types
  QueryType ||= GraphQL::ObjectType.define do
    name 'Query'
    description 'The query root for the schema'

    field :post do
      type PostType
      argument :id, !types.ID
      resolve -> (_, args, _) {
        PostRepository.find(args[:id])
      }
    end
  end
end
