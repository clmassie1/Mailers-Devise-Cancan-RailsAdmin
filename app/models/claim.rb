class Claim < ApplicationRecord
    include RailsAdminCharts
    has_one :rent 
end
