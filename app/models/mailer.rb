class Mailer < ApplicationRecord
    include RailsAdminCharts

    # def self.graph_data since=30.days.ago
    #     [
    #       {
    #           name: 'Resource with Hardware',
    #           pointInterval: point_interval = 1.day * 1000,
    #           pointStart: start_point = since.to_i * 1000,
    #           data: self.where(last_date: Date.today).delta_records_since(since)
    #       },
    #       {
    #           name: 'Resource with Software',
    #           pointInterval: point_interval,
    #           pointStart: start_point,
    #           data: self.where(first_date: nil).delta_records_since(since)
    #       },{
    #         name: 'Resource with Hardware',
    #         pointInterval: point_interval = 1.day * 1000,
    #         pointStart: start_point = since.to_i * 1000,
    #         data: self.where(last_date: Date.today).delta_records_since(since)
    #     }
    #     ]
    # end
        def self.graph_data(since = 30.days.ago)

         Mailer.where(last_date: nil).delta_records_since(since)
          # Output
          # [["Bagmati", 3], ["Gandaki", 3], ["Janakpur", 5]]
        end
     

  

      def self.chart_type
        'pie'
      end
    #   def self.label_rotation
    #         "-45"
    #       end

    #       def self.xaxis
    #         ['last_date', 'cat b', 'cat c' 'cat d', 'cat e', 'cat f', 'cat g', 'cat h']
    #       end

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