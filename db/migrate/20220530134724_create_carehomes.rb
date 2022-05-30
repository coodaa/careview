class CreateCarehomes < ActiveRecord::Migration[7.0]
  def change
    create_table :carehomes do |t|
      t.string :address
      t.string :name
      t.integer :price_range
      t.text :description
      t.string :types
      t.string :activities
      t.string :pets_allowed
      t.string :wifi
      t.string :lift
      t.string :wheelchair_access
      t.string :security
      t.string :smoke_alarm
      t.string :tv
      t.string :parking
      t.string :hair_salon
      t.string :sauna
      t.string :bar
      t.string :air_conditioning
      t.string :physiotherapist
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
