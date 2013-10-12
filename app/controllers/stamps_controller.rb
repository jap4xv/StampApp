class StampsController < ApplicationController
  before_action :set_stamp, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, only: [:edit, :update, :destroy, :new, :create, :duplicate, :update_multiple, :edit_multiple, :clone]
  # autocomplete :tag, :name
  
  # GET /stamps
  # GET /stamps.json
  def index
    if params[:tag]
      @stamps = Stamp.tagged_with(params[:tag])
    else
    @search = Stamp.search do
      fulltext params[:search]
    end
    @stamps = @search.results

    end
  end

  # GET /stamps/1
  # GET /stamps/1.json
  def show
  end

  # GET /stamps/new
  def new
    @stamp = Stamp.new
    6.times { @stamp.assets.build}
  end


#  def clone
#    @stamp = Stamp.find(params[:id]) # find original object
#    @stamp = Stamp.new(@stamp.attributes) # initialize duplicate (not saved)
#    render :new # render same view as "new", but with @stamp attributes already filled in
#  end

  # GET /stamps/1/edit
  def edit
    @stamp = Stamp.find(params[:id])
    6.times { @stamp.assets.build}
  end

  def edit_multiple
    @stamps = Stamp.find(params[:stamp_ids])
  end
  
  def update_multiple
    @stamps = Stamp.find(params[:stamp_ids])
    @stamps.each do |stamp|
      stamp.update(stamp_params)
    end
    flash[:notice] = "Updated stamps!"
    redirect_to stamps_path
  end

  # POST /stamps
  # POST /stamps.json
  def create
    @stamp = Stamp.new(stamp_params)

    respond_to do |format|
      if @stamp.save
        format.html { redirect_to @stamp, notice: 'Stamp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @stamp }
      else
        format.html { render action: 'new' }
        format.json { render json: @stamp.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /stamps/1
  # PATCH/PUT /stamps/1.json
  def update
    respond_to do |format|
      if @stamp.update(stamp_params)
        format.html { redirect_to @stamp, notice: 'Stamp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stamps/1
  # DELETE /stamps/1.json
  def destroy
    @stamp.destroy
    respond_to do |format|
      format.html { redirect_to stamps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stamp
      @stamp = Stamp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stamp_params
      params.require(:stamp).permit(:Title, :Description, :Price, :notes, :image, :image2, :image3, :image4, :image5, :asset, :tag_list, :categories, :stamp, :category_ids => [])
    end
end
