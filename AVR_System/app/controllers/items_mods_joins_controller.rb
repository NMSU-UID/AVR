class ItemsModsJoinsController < ApplicationController
  before_action :set_items_mods_join, only: [:show, :edit, :update, :destroy]

  # GET /items_mods_joins
  # GET /items_mods_joins.json
  def index
    @items_mods_joins = ItemsModsJoin.all
  end

  # GET /items_mods_joins/1
  # GET /items_mods_joins/1.json
  def show
  end

  # GET /items_mods_joins/new
  def new
    @items_mods_join = ItemsModsJoin.new
  end

  # GET /items_mods_joins/1/edit
  def edit
  end

  # POST /items_mods_joins
  # POST /items_mods_joins.json
  def create
    @items_mods_join = ItemsModsJoin.new(items_mods_join_params)

    respond_to do |format|
      if @items_mods_join.save
        format.html { redirect_to @items_mods_join, notice: 'Items mods join was successfully created.' }
        format.json { render :show, status: :created, location: @items_mods_join }
      else
        format.html { render :new }
        format.json { render json: @items_mods_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items_mods_joins/1
  # PATCH/PUT /items_mods_joins/1.json
  def update
    respond_to do |format|
      if @items_mods_join.update(items_mods_join_params)
        format.html { redirect_to @items_mods_join, notice: 'Items mods join was successfully updated.' }
        format.json { render :show, status: :ok, location: @items_mods_join }
      else
        format.html { render :edit }
        format.json { render json: @items_mods_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items_mods_joins/1
  # DELETE /items_mods_joins/1.json
  def destroy
    @items_mods_join.destroy
    respond_to do |format|
      format.html { redirect_to items_mods_joins_url, notice: 'Items mods join was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_items_mods_join
      @items_mods_join = ItemsModsJoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def items_mods_join_params
      params.require(:items_mods_join).permit(:menuitems_id, :mods_id)
    end
end
