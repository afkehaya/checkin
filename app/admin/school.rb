ActiveAdmin.register School do
menu priority:1

show do
panel "Classrooms" do
        table_for Classroom.order("updated_at desc").limit(10) do
        column :name do |classroom|
            link_to classroom.teacher, [:admin, classroom]
         end
       end
     end

   end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
