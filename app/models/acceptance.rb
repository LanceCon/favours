class Acceptance < ActiveRecord::Base
	belongs_to :user
	belongs_to :acceptance
end