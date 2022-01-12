class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
  end

  def create
    @item = Item.create(item_params)
    
    if @item.save
      flash[:success] = "Success, #{@item.name} added to inventory."
      #clears form when successful
      redirect_to items_new_path
    else
      flash[:error] = @item.errors.full_messages.to_sentence
      redirect_to items_new_path
    end
    
  end

  private

  def item_params
    params.permit(:name, :quantity, :description, :price)
  end

end
