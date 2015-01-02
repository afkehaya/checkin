ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    
     
     panel "Recent Checkins" do
        table_for Pin.order("updated_at desc").limit(10) do
        column :name do |pin|
            link_to pin.user.name, [:admin, pin]
        end
        column "Checkin Date", :updated_at
        end
        strong { link_to "View All Checkins", admin_checkins_path} 
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
