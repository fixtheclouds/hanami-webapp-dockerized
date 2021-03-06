class Post < Hanami::Entity
  attributes do
    attribute :id, Types::Int

    attribute :user_id, Types::Int
    attribute :parent_id, Types::Int

    attribute :title, Types::String
    attribute :body, Types::String

    attribute :created_at, Types::Time
    attribute :updated_at, Types::Time
  end
end
