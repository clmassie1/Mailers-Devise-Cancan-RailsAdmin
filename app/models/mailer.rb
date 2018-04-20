class Mailer < ApplicationRecord
    include RailsAdminCharts
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