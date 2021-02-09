require_relative 'query_type'

class AppSchema < GraphQL::Schema
  query Types::QueryType
end
