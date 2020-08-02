class FolderFilesController < ApplicationController
  before_action :set_folder_file, only: [:show, :edit, :update, :destroy]

  # GET /folder_files
  # GET /folder_files.json
  def index
    @folder_files = FolderFile.all
  end

  # GET /folder_files/1
  # GET /folder_files/1.json
  def show
  end

  # GET /folder_files/new
  def new
    @folder_file = FolderFile.new
  end

  # GET /folder_files/1/edit
  def edit
  end

  # POST /folder_files
  # POST /folder_files.json
  def create
    @folder_file = FolderFile.new(folder_file_params)

    respond_to do |format|
      if @folder_file.save
        format.html { redirect_to @folder_file, notice: 'Folder file was successfully created.' }
        format.json { render :show, status: :created, location: @folder_file }
      else
        format.html { render :new }
        format.json { render json: @folder_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /folder_files/1
  # PATCH/PUT /folder_files/1.json
  def update
    respond_to do |format|
      if @folder_file.update(folder_file_params)
        format.html { redirect_to @folder_file, notice: 'Folder file was successfully updated.' }
        format.json { render :show, status: :ok, location: @folder_file }
      else
        format.html { render :edit }
        format.json { render json: @folder_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /folder_files/1
  # DELETE /folder_files/1.json
  def destroy
    @folder_file.destroy
    respond_to do |format|
      format.html { redirect_to folder_files_url, notice: 'Folder file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_folder_file
      @folder_file = FolderFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def folder_file_params
      params.fetch(:folder_file, {})
    end
end
