class CreateFollows < ActiveRecord::Migration[8.0]
  def change
    create_table :follows do |t|
      t.references :follower, null: false, foreign_key: { to_table: :users }
      t.references :followed, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end

    # Prevent duplicate follows (a user can't follow the same person twice)
    add_index :follows, [:follower_id, :followed_id], unique: true
    # Note: Removed the separate index on :followed_id as it's covered by the unique composite index
  end
end