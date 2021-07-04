class SchoolClassesController < ApplicationController


  # GET /school_classes
  # GET /school_classes.json
  def index
    @school_classes = SchoolClass.all
  end

  # GET /school_classes/1
  # GET /school_classes/1.json
  def show
    set_school_class
  end

  # GET /school_classes/new
  def new
    @school_class = SchoolClass.new
  end

  # GET /school_classes/1/edit
  def edit
    set_school_class
  end

  # POST /school_classes
  # POST /school_classes.json
  def create
    @school_class = SchoolClass.create(school_class_params)
    @school_class.id ? redirect_to(school_class_path(@school_class)) : redirect_to(new_school_class_path)
  end

  # PATCH/PUT /school_classes/1
  # PATCH/PUT /school_classes/1.json
  def update
    set_school_class
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_class
      @school_class = SchoolClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_class_params
      params.require(:school_class).permit(:title, :room_number)
    end
end
