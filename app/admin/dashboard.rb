ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Add panels for sales, profits, and orders received
    columns do
      column do
        panel "Total Sales" do
          para "Total Sales: #{Sale.count}" # Assuming you have a Sale model
        end
      end

      column do
        panel "Total Profits" do
          para "Total Profits: $#{Sale.sum(:amount)}" # Assuming you have an 'amount' column in your Sale model
        end
      end

      column do
        panel "Total Orders Received" do
          para "Total Orders: #{Order.count}" # Assuming you have an Order model
        end
      end
    end
  end # content
end
