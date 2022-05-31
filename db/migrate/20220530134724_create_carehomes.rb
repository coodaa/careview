class CreateCarehomes < ActiveRecord::Migration[7.0]
  def change
    create_table :carehomes do |t|
      t.string :address
      t.string :name
      t.integer :min_price
      t.integer :max_price
      t.text :description
      t.string :types
      t.boolean :activities
      t.boolean :pets_allowed
      t.boolean :wifi
      t.boolean :lift
      t.boolean :wheelchair_access
      t.boolean :security
      t.boolean :smoke_alarm
      t.boolean :tv
      t.boolean :parking
      t.boolean :hair_salon
      t.boolean :sauna
      t.boolean :bar
      t.boolean :air_conditioning
      t.boolean :physiotherapist
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
