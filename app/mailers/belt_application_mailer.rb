class BeltApplicationMailer < ApplicationMailer
  def send_application_notification(user)
    @user = user

    mail(
      # to: "mar.rie.cra@gmail.com",
      to: "david.pdrsn@gmail.com",
      subject: "New belt application",
    )
  end
end
