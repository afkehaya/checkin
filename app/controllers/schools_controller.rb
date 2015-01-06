class SchoolsController < InheritedResources::Base
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  def index
    @schools = School.all
  end

  def show
  end

  def new
    @school = School.new
  end

  def edit
  end

   def create
    @school = current_user.schools.build(school_params)
    if @school.save
      redirect_to @school, notice: 'school was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @school.update(school_params)
      redirect_to @school, notice: 'School was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @school.destroy
    redirect_to classrooms_url
  end

  private
    def set_school
      @School = School.find(params[:id])
    end
    def school_params
      params.require(:school).permit(:school)
    end
end

