class TablesItemsJoinsController < ApplicationController

  def create
    @tablesitemsjoins = TablesItemsJoin.new(table_item_joins_params)

    respond_to do |format|
      if @tablesitemsjoins.save
        format.html { redirect_to "/tables/#{params[:table_id]}" }
        format.json { render :show, status: :created, location: @table }
      else
        format.html { render :new }
        format.json { render json: @table.errors, status: :unprocessable_entity }
      end
    end
  end

  def table_item_joins_params
    params.permit(:table_id, :menuitem_id)
  end

end