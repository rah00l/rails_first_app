class Daywisemenu < ActiveRecord::Base
	belongs_to :day
	validates_presence_of :menuitem
end
