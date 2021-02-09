module Types
  PostType = GraphQL::ObjectType.define do
    name 'Post'

    field :id, types.ID
    field :title, types.String
    field :body, types.String
    field :user, types[!UserType]
    field :created_at, types.Time
    field :updated_at, types.Time
  end
end
