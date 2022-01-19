require 'csv'

class ItemsController < ApplicationController
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new 
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.create(item_params)
    
    if @item.save
      flash[:success] = "Success, #{@item.name} added to inventory."
      redirect_to items_new_path
    else
      flash[:error] = @item.errors.full_messages.to_sentence
      redirect_to items_new_path
    end  
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      flash[:success] = "Success, #{@item.name} updated."
      redirect_to '/items'
    else
      flash[:error] = @item.errors.full_messages.to_sentence
      redirect_to edit_item_path(@item)
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:success] = "Success, #{@item.name} deleted."
      redirect_to '/items'
    else
      flash[:error] = @item.errors.full_messages.to_sentence
      redirect_to '/items'
    end
  end

  def generate_csv
    @items = Item.all
    respond_to do |format|
      format.csv { send_data @items.to_csv, filename: "item-#{Date.today}.csv" }
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :quantity, :description, :price)
  end
  
end
