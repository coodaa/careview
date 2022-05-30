class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :rating
      t.string :food
      t.string :privacy
      t.string :staff
      t.string :hygiene
      t.string :atmosphere
      t.references :user, null: false, foreign_key: true
      t.references :carehome, null: false, foreign_key: true

      t.timestamps
    end
  end
end
