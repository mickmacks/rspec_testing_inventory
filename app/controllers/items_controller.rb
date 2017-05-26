class ItemsController < ApplicationController

	def show
		@item = Item.find_by_id(params[:item_id])
	end

	private
	
	def item_params
		params.require(:item).permit(:size, :color, :status)		
	end

end
