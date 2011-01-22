class DaywisemenuController < ApplicationController
	
	  def list
		@daywisemenus = Daywisemenu.find(:all)
	end
   def show
	   @daywisemenu = Daywisemenu.find(params[:id])

   end
 
 def new
	   @daywisemenu = Daywisemenu.new
      @days = Day.find(:all)

   end
   
   def create
	   
	@daywisemenu = Daywisemenu.new(params[:daywisemenu])
      if @daywisemenu.save
            redirect_to :action => 'list'
      else
            @days = Day.find(:all)
            render :action => 'new'
      end

	
end

   def edit
	   
	  @daywisemenu = Daywisemenu.find(params[:id])
      @days = Day.find(:all)   
	   
   end
   def update
	      @daywisemenu = Daywisemenu.find(params[:id])
      if @book.update_attributes(params[:book])
         redirect_to :action => 'show', :id => @daywisemenu
      else
         @days = Day.find(:all)
         render :action => 'edit'
      end

   end
   def delete
	Daywisemenu.find(params[:id]).destroy
      redirect_to :action => 'list'

   end

end
