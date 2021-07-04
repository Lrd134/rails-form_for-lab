class StudentsController < ApplicationController


  def index
    @students = Student.all
  end

  def show
    set_student
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
    set_student
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.create(student_params)
    @student.id ? redirect_to(student_path(@student)) : redirect_to(new_student_path)
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    set_student
    @student.update(student_params)
    redirect_to student_path @student
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end
end
