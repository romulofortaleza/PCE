class AddFieldToCreateInstrumentRegistrations < ActiveRecord::Migration[5.2]
  def change
    add_column :instrument_registrations, :instrument_type, :string
  end
end
