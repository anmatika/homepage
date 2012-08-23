class GuestpostsController < ApplicationController
  # GET /guestposts
  # GET /guestposts.json
  def index
    @guestposts = Guestpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @guestposts }
    end
  end

  # GET /guestposts/1
  # GET /guestposts/1.json
  def show
    @guestpost = Guestpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @guestpost }
    end
  end

  # GET /guestposts/new
  # GET /guestposts/new.json
  def new
    @guestpost = Guestpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @guestpost }
    end
  end

  # GET /guestposts/1/edit
  def edit
    @guestpost = Guestpost.find(params[:id])
  end

  # POST /guestposts
  # POST /guestposts.json
  def create
    @guestpost = Guestpost.new(params[:guestpost])

    respond_to do |format|
      if @guestpost.save
        format.html { redirect_to @guestpost, notice: 'Guestpost was successfully created.' }
        format.json { render json: @guestpost, status: :created, location: @guestpost }
      else
        format.html { render action: "new" }
        format.json { render json: @guestpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /guestposts/1
  # PUT /guestposts/1.json
  def update
    @guestpost = Guestpost.find(params[:id])

    respond_to do |format|
      if @guestpost.update_attributes(params[:guestpost])
        format.html { redirect_to @guestpost, notice: 'Guestpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @guestpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guestposts/1
  # DELETE /guestposts/1.json
  def destroy
    @guestpost = Guestpost.find(params[:id])
    @guestpost.destroy

    respond_to do |format|
      format.html { redirect_to guestposts_url }
      format.json { head :no_content }
    end
  end
end
