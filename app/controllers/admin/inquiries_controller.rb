class Admin::InquiriesController < Admin::BaseController

  resource_controller
  layout 'admin'

  destroy.success.wants.js { render_js_for_destroy }

  def collection
    return @collection if @collection.present?
    unless request.xhr?
      @search = Inquiry.search(params[:search])

      #set order by to default or form result
      @search.order ||= "ascend_by_email"

      @collection = @search.page(params[:page]).per(Spree::Config[:orders_per_page])

    else
      @collection = Inquiry.find(:all, :limit => (params[:limit] || 100))
    end
  end

end
