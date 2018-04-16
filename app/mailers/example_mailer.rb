class ExampleMailer < ApplicationMailer
    default from: "clmassie.1@gmail.com"
      def sample_email
        mail(to: User.first.email, subject: 'Sample Email')
      end
end
