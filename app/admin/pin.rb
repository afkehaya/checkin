ActiveAdmin.register Pin do
  ActiveAdmin.register Pin, as: "Checkin" do
  
   index do
    column :id do |checkin|
            link_to checkin.id, [:admin, checkin]
          end
    column "Submission Date", :updated_at
    column "Response 1", :question 
    column "Response 2", :question1
    column "Response 3", :question2
    column "Response 4", :question3
    column "Response 5", :question4

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
end
