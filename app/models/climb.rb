class Climb < ApplicationRecord
        validates_presence_of :name, :description, :grade
end
