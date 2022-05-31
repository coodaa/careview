class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.integer :food
      t.integer :privacy
      t.integer :staff
      t.integer :hygiene
      t.integer :atmosphere
      t.references :user, null: false, foreign_key: true
      t.references :carehome, null: false, foreign_key: true

      t.timestamps
    end
  end
end
