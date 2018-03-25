class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  before_action :set_variables, only: [:new, :create, :show, :edit, :update, :index]
  has_scope :by_category, type: :array
  has_scope :by_level, type: :array
  has_scope :by_topic, type: :array


  # GET /entries
  # GET /entries.json
  def index
    @entries = apply_scopes(Entry).all

  end



  # GET /entries/1
  # GET /entries/1.json
  def show
  end

  # GET /entries/new
  def new
   
    @entry = Entry.new 
  end

  # GET /entries/1/edit
  def edit
    @topics = Topic.all
    @categories = Category.all
  end

  # POST /entries
  # POST /entries.json
  def create
    
    @entry = Entry.new(entry_params)

    respond_to do |format|
      if @entry.save

        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @entry }

      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
   
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
      @entry.category_id = params[:category_id]
      @entry.topic_id = params[:topic_id]
    end
    def set_variables
      @categories = Category.all
      @topics = Topic.all
     
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit( :category_id, :title, :entry_type,:entry_type_other, :genre, :level, :course,  :attachment, :remove_attachment, :topic_id)
    end
end
