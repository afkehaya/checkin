class ClassroomsController < InheritedResources::Base
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]

  def index
    @classrooms = Classroom.all
  end

  def show
  end

  def new
    @classroom = Classroom.new
  end

  def edit
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      redirect_to @classroom, notice: 'Classroom was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @classroom.update(classroom_params)
      redirect_to @classroom, notice: 'Classroom was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @classroom.destroy
    redirect_to classrooms_url
  end

  private
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

    def classroom_params
      params.require(:classroom).permit(:teacher)
    end
end

