class CreateCatRentalRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :cat_rental_requests do |t|
      t.integer :cat_id
      t.date :start_date
      t.date :end_date
      t.string :status, default: 'PENDING'
      t.timestamps
    end

    add_index :cat_rental_requests, :cat_id
    
  end
end
