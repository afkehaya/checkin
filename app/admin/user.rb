ActiveAdmin.register User do
  menu false
  ActiveAdmin.register User, as: "Student" do
    menu priority: 3
   index do
    column :name 
    column "View Checkin", :id do |checkin|
            link_to checkin.id, [:admin, checkin]
          end
    column "Email", :email
    column "Last Signed In", :last_sign_in_at
    column "Number of Sign Ins", :sign_in_count
   

  end
   filter :name

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
