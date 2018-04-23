class Resource < ApplicationRecord
    include RailsAdminCharts
 
    
    def self.graph_data(since = 30.days.ago)
        Resource.group(:first_date).count.to_a
      # Output
      # [["Bagmati", 3], ["Gandaki", 3], ["Janakpur", 5]]
    end
  
    def self.chart_type
      'pie'
    end
end
