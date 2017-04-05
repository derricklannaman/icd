class CreateIcd10s < ActiveRecord::Migration[5.0]
  def change
    create_table :icd10s do |t|
      t.string :code_system
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
