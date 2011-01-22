class MenudisplayController < ApplicationController
  def index
	  puts "in index-------------"
	              @days = Day.find(:all)

  end

  def show
	  puts "--------------------- in show -----------------"
	 # puts params[:daywisemenu][:day_id]
	 if params[:daywisemenu][:day_id]!= nil
	@daywisemenu = Daywisemenu.find(:all,
							    :conditions => ["day_id = #{params[:daywisemenu][:day_id]}" ]).each do |a|

				puts "****************************88"
				puts a.menuitem
		end
	end  
  end

end
