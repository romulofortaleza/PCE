class CreateDocumentRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :document_registers do |t|
      t.string :name
      t.references :instrument_registrations, foreign_key: true
      t.binary :document_file

      t.timestamps
    end
  end
end
