class ManagersController < ApplicationController
  def list
    @items = Item.all
  end

  def add
    @item = Item.new
  end

  def edit
  end

  def delete
  end

  

 # @item = Item.new(item_params)

 # if @item.save
#    redirect_to @item
#  else
 #   render :new, status: :unprocessable_entity
 # end





 # private
 #   def item_params
   #   params.require(:item).permit(:name, :description, :quantity)
  #  end
end
