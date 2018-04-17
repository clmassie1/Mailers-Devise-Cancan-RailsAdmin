class ExampleMailer < ApplicationMailer
  default to: -> { User.pluck(:email) },
         from: "clmassie.1@gmail.com"
    
      def sample_email
        mail( subject: 'Sample Email')
      end
end
