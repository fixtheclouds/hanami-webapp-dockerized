Hanami::Model.migration do
  change do
    create_table :posts do
      primary_key :id

      foreign_key :user_id, :users, on_delete: :cascade, null: false

      column :title, String, null: false
      column :body, String, null: false
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false

      index :user_id
    end
  end
end
