module Types
  PostType ||= GraphQL::ObjectType.define do
    name 'Post'

    field :id, types.ID
    field :title, types.String
    field :body, types.String
    field :user, types[!UserType]
    field :created_at, types.Int
    field :updated_at, types.Int
  end
end
