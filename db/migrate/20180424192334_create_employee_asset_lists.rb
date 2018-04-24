class CreateEmployeeAssetLists < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_asset_lists do |t|
      t.string :managed_by
      t.integer :office
      t.integer :employee_number
      t.date :hire_date
      t.date :termination_date
      t.string :first_name
      t.string :last_name
      t.string :friendly_name
      t.date :install_date
      t.integer :device_sn_number
      t.string :device
      t.string :office
      t.string :adobe
      t.string :visio
      t.string :location
      t.string :status
      t.string :operating_system
      t.string :email
      t.string :voip
      t.string :ext_number
      t.string :office
      t.string :direct_dial
      t.text :notes

      t.timestamps
    end
  end
end
