require 'csv'
require 'dropbox'

dbx = Dropbox::Client.new('ShQHxACGo_AAAAAAAAAAS_dNGmQdKAZYy4L2r5yI2CZ9EOe5DCgGkIgg7bh2gad7')

namespace :import do 
  desc "Import resources from csv"

  task resources: :environment do 

    csv_file = dbx.download('QOL Team Roster_.slh.xlsx') 
  
    CSV.parse(csv_file.last.to_s, headers: true) do |row|
          puts row
          Resource.create(
          company_code: row["Company Code"], 
          employee_id: row["Employee ID"], 
          last_name: row["Last Name"], 
          first_name: row["First Name"], 
          job_title: row["Job Title"],
          work_location_name: row["Work Location Name"],
          client_hire_date: row["Client Hire Date"],
          term_date: row["Term Date"],
          classification: row["Classification"],
          source: row["Source"],
          salesforce_user: row["Salesforce User"],
          new_hire_notification_sent: row["New Hire Notification"])
    end
  end
end
