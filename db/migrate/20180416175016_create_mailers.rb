class CreateMailers < ActiveRecord::Migration[5.1]
  def change
    create_table :mailers do |t|
      t.string :mailer
      t.string :test
      t.date :last_date
      t.date :first_date

      t.timestamps
    end
  end
end
