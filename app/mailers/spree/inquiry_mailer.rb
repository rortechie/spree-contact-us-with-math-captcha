class Spree::InquiryMailer < ActionMailer::Base

  def notification(inquiry, resend=false)
    @inquiry = inquiry
    mail(:from => inquiry.email, :to => MailMethod.current.preferred_intercept_email, :subject => "#{Spree::Config[:site_name]} : #{I18n.t(:contact_form)}")
  end

end
