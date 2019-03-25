class StudentinfosController < ApplicationController
  before_action :set_studentinfo, only: [:show, :edit, :update, :destroy]

  # GET /studentinfos
  # GET /studentinfos.json
  def index
    @studentinfos = Studentinfo.all
  end

  # GET /studentinfos/1
  # GET /studentinfos/1.json
  def show
  end

  # GET /studentinfos/new
  def new
    @studentinfo = Studentinfo.new
  end

  # GET /studentinfos/1/edit
  def edit
  end

  # POST /studentinfos
  # POST /studentinfos.json
  def create
    @studentinfo = Studentinfo.new(studentinfo_params)

    respond_to do |format|
      if @studentinfo.save
        format.html { redirect_to @studentinfo, notice: 'Studentinfo was successfully created.' }
        format.json { render :show, status: :created, location: @studentinfo }
      else
        format.html { render :new }
        format.json { render json: @studentinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentinfos/1
  # PATCH/PUT /studentinfos/1.json
  def update
    respond_to do |format|
      if @studentinfo.update(studentinfo_params)
        format.html { redirect_to @studentinfo, notice: 'Studentinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @studentinfo }
      else
        format.html { render :edit }
        format.json { render json: @studentinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentinfos/1
  # DELETE /studentinfos/1.json
  def destroy
    @studentinfo.destroy
    respond_to do |format|
      format.html { redirect_to studentinfos_url, notice: 'Studentinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentinfo
      @studentinfo = Studentinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studentinfo_params
      params.fetch(:studentinfo, {})
    end
end
