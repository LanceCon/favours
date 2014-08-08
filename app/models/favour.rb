class Favour < ActiveRecord::Base
	belongs_to :user 
	has_one :acceptance, dependent: :destroy
end