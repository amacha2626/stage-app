class TheatreCompany < ApplicationRecord
  belongs_to :founder, class_name: 'User'
end
