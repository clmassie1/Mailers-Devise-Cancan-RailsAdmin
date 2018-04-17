class Mailer < ApplicationRecord
  
    after_validation :send_email

    def send_email()
        Mailer.all.each do |mailer|
        if mailer.itself.last_date == Date.today #In this case, 'if true' would do exactly the same!
            ExampleMailer.sample_email().deliver 
        end
    end
end 
end 
