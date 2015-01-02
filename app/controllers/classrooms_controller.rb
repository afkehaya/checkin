class ClassroomsController < InheritedResources::Base
  private

    def classroom_params
      params.require(:classroom).permit(:teacher, :user_id)
    end
end

