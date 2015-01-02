ActiveAdmin.register Pin do
  menu false 
  show :title => "Checkin" do
  render "pins"
  active_admin_comments
  end
  ActiveAdmin.register Pin, as: "Checkin" do
   menu priority: 2 

   index :title => "Checkin" do
    column :Student do |checkin|
            link_to checkin.user.name, [:admin, checkin]
          end
    column "Submission Date", :updated_at
    column "Response 1", :question 
    column "Response 2", :question1
    column "Response 3", :question2
    column "Response 4", :question3
    column "Response 5", :question4
  end

  filter :user
  filter :created_at




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
end
