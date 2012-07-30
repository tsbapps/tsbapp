class RmasController < ApplicationController
    def index
        @projects = Project.search(params[:search])
    end
  # GET /rmas
  # GET /rmas.json
  def index
    @rmas = Rma.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rmas }
    end
  end

  # GET /rmas/1
  # GET /rmas/1.json
  def show
    @rma = Rma.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rma }
    end
  end

  # GET /rmas/new
  # GET /rmas/new.json
  def new
    @rma = Rma.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rma }
    end
  end

  # GET /rmas/1/edit
  def edit
    @rma = Rma.find(params[:id])
  end

  # POST /rmas
  # POST /rmas.json
  def create
    @rma = Rma.new(params[:rma])

    respond_to do |format|
      if @rma.save
        format.html { redirect_to @rma, notice: 'Rma was successfully created.' }
        format.json { render json: @rma, status: :created, location: @rma }
      else
        format.html { render action: "new" }
        format.json { render json: @rma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rmas/1
  # PUT /rmas/1.json
  def update
    @rma = Rma.find(params[:id])

    respond_to do |format|
      if @rma.update_attributes(params[:rma])
        format.html { redirect_to @rma, notice: 'Rma was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rmas/1
  # DELETE /rmas/1.json
  def destroy
    @rma = Rma.find(params[:id])
    @rma.destroy

    respond_to do |format|
      format.html { redirect_to rmas_url }
      format.json { head :no_content }
    end
  end
end
