class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  before_action :set_variables, only: [:new, :create, :show, :edit, :update, :index]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :user_is_current_user, only: [:edit, :update, :destroy]
  has_scope :by_categories, type: :array
  has_scope :by_level, type: :array
  has_scope :by_topics, type: :array


  # GET /entries
  # GET /entries.json
  def index
    @entries = apply_scopes(Entry.order(:created_at => 'DESC'))

  end



  # GET /entries/1
  # GET /entries/1.json
  def show
  end

  # GET /entries/new
  def new
    @entry = Entry.new(:user => @current_user)
  end

  # GET /entries/1/edit
  def edit

  end

  # POST /entries
  # POST /entries.json
  def create

    @entry = Entry.new(entry_params)
    @entry.user_id = current_user.id

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
   user = User.find_by_id(@entry.user_id)
   entry = @entry
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
  
    end
    def set_variables
      @categories = Category.all
      @topics = Topic.all
     
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit({topic_ids: []}, {category_ids: []},:description, :category_id, :title, :entry_type,:entry_type_other, :genre, :level, :course,  :attachment, :remove_attachment, :entry_id, :user, :user_id, :id)
    end
    def user_is_current_user
    unless current_user == @entry.user or current_user.admin?
      redirect_to(root_url, alert: "Sorry! You can't edit this resource since you didn't create it.") and return
    end
  end
end
