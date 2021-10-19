class MigrationNameaddForeignKeyToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :user_id, :integer
    add_foreign_key :posts, :users, on_delete: :cascade
  end
end
