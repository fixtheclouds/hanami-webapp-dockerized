require_relative 'query_type'

module Types
  Schema ||= GraphQL::Schema.define(query: QueryType)
end
