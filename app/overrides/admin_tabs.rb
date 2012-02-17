Deface::Override.new(:virtual_path => "layouts/admin",
                       :name => 'contact_us',
                       :insert_bottom => "[data-hook='admin_tabs']",
                       :text => "<%=  tab(:inquiries)  %>"
                       )