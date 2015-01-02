ActiveAdmin.register Classroom do
  menu priority: 4 
  show :title => :teacher do
    render "show"

        panel "Recent Checkins" do
        table_for Pin.order("updated_at desc").limit(10) do
        column :name do |pin|
            link_to pin.user.name, [:admin, pin]
        end
        column "Checkin Date", :updated_at
        end
        strong { link_to "View All Checkins", admin_checkins_path} 
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
