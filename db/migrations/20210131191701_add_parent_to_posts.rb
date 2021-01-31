Hanami::Model.migration do
  change do
    alter_table do
      add_foreign_key :parent_id, :posts, on_delete: :cascade
    end
  end
end
