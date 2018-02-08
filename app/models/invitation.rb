class Invitation < ApplicationRecord
	has_many :attendees, :through => :invitations
	has_many :invitations, :foreign_key => "attended_event_id"
	belongs_to :creator, :class_name => "User"
end