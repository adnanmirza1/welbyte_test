class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.string :title
      t.integer :status, default: 0
      t.datetime :start_time
      t.datetime :end_time
      t.string :client_email
      
      t.references :therapist, foreign_key: true

      t.timestamps
    end
  end
end
