class Appointments < ActiveRecord::Migration[6.1]
    def change
        create_table :appointments do |t|
            t.datetime :data
            t.integer :patient_id
            t.integer :ved_id
        end
    end
end
