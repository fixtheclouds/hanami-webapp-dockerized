require_relative 'base_object'
module Types
  class UserType < BaseObject
    graphql_name 'User'

    field :id, ID, null: false
    field :name, String, null: false
  end
end
