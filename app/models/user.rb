class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


       after_create :send_welcome_message #, other callbacks..
        
        def send_welcome_message
            # Sends email to user when user is created.
            ExampleMailer.sample_email().deliver
        end
end
