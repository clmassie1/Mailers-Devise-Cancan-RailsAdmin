class Car < ApplicationRecord
    include RailsAdminCharts
    belongs_to :rent
end
