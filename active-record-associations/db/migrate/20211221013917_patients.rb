class Patients < ActiveRecord::Migration[6.1]
    def change
        create_table :patients do |t|
            t.string :species
            t.string :name
            t.string :owner
            t.string :phone
            t.boolean :active
            t.integer :age
            t.integer :clinic_id
        end
    end
end
