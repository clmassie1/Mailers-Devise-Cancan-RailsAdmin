class Mailer < ApplicationRecord
  
    after_validation :send_email

    def send_email()
        if Mailer.where('last_date <= ?', Date.today)
            ExampleMailer.sample_email().deliver 
        end
    end
  
end 
        