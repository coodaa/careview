class AddCoordinatesToCarehomes < ActiveRecord::Migration[7.0]
  def change
    add_column :carehomes, :latitude, :float
    add_column :carehomes, :longitude, :float
  end
end
