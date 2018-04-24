require 'csv'
require 'dropbox'
require 'spreadsheet'

dbx = Dropbox::Client.new('ShQHxACGo_AAAAAAAAAAS_dNGmQdKAZYy4L2r5yI2CZ9EOe5DCgGkIgg7bh2gad7')

namespace :import do 
  desc "Import employee_asset_lists from dropbox"

  task employee_asset_lists: :environment do 

    csv_file = dbx.download('IT_Asset Management/API_Data/QOL Employee Asset List.slh.xlsx') 
   
    CSV.parse(csv_file.last.to_s, headers: true) do |row|
          puts row
          employee_asset_lists = EmployeeAssetLists.create(
            managed_by: row["Managed by"], 
            office: row["Office"], 
            employee_number: row["Employee Number"], 
            hire_date: row["Hire Date"], 
            termination_date: row["Termination Date"],
            first_name: row["First Name"],
            last_name: row["Last Name"],
            friendly_name: row["Friendly Name"],
            install_date: row["Install Date"],
            device_sn_number: row["Device SN#"],
            device: row["Device"],
            adobe: row["Adobe"],
            visio: row["Visio"],
            location: row["Location"],
            status: row["Status"],
            operating_system: row["Operating System"],
            email: row["email"],
            voip: row["VOIP"],
            ext_number: row["Ext Number"],
            office: row["Office"],
            direct_dial: row["Direct Dial"],
            notes: row["notes"])
    end
  end
end
