Hanami::Model.migration do
  change do
    primary_key :id

    column :title, String, null: false
    column :body, String, null: false
    column :created_at, Time, null: false
  end
end
