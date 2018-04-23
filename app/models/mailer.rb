class Mailer < ApplicationRecord
    include RailsAdminCharts

    def self.graph_data since=30.days.ago
        [
          {
              name: 'Admin Users',
              pointInterval: point_interval = 1.day * 1000,
              pointStart: start_point = since.to_i * 1000,
              data: self.where(type: 'Admin').delta_records_since(since)
          },
          {
              name: 'Standard Users',
              pointInterval: point_interval,
              pointStart: start_point,
              data: self.where(type: nil).delta_records_since(since)
          }
        ]
        
      end
        after_create :send_email_if 
        
        def send_email_if
            
                if  @mailer = Mailer.all.where('last_date <= ?', Date.today)
                           @mailer.all.each do |mailer|
                                puts "Mailer Name  #{mailer.mailer}"
                                ExampleMailer.sample_email(mailer).deliver
                            end
                end 

        end

end