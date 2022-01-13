class ItemsController < ApplicationController
  
  def index
    @items = Item.all
  end

  def new
  end

  def show
    @items = Item.all
    render :edit
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

  def edit
    @item = Item.find(params[:id])
    render :edit
  end

  #help
  def update
    @item = Item.find(params[:id])
    if @item.update(params.require(:item).permit(:name, :quantity, :description, :price))
      flash[:success] = "Success, #{@item.name} updated."
      redirect_to items_url(@item)
    else
      flash[:error] = @item.errors.full_messages.to_sentence
      render :edit
    end
  end

  #help
  def confirm_destroy
    @item = Item.find(params[:id])
    render :delete
  end

  #help
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_path
  end

  private

  def item_params
    params.permit(:name, :quantity, :description, :price)
  end

  
end
