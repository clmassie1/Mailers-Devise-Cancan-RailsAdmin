class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
      t.date :last_date
      t.date :first_date

      t.timestamps
    end
  end
end
