class CreateInstrumentRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :instrument_registrations do |t|
      t.integer :instrument_number
      t.integer :internal_number
      t.integer :extra_number
      t.string :object_agreement
      t.string :granting_organ
      t.string :linked_organ
      t.string :existence_im
      t.string :instituition_name
      t.string :value_transfer
      t.string :counterpart_value
      t.string :total
      t.date :signature_date
      t.date :end_date
      t.date :suspensive_date
      t.string :type
      t.string :address
      t.date :open_date
      t.string :organ
      t.string :user
      t.string :signature

      t.timestamps
    end
  end
end
