require_relative 'query_type'
require_relative 'user_type'

QueryType = GraphQL::ObjectType.define do
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
