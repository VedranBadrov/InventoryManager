class ManagersController < ApplicationController
  def index
  end

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
end
