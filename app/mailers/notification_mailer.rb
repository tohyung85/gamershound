class NotificationMailer < ApplicationMailer
  default from: "no-reply@gamershound.com"

  def comment_added(comment)
    @place = comment.place
    mail(to: @place.user.email,
          subject: "A comment has been added to #{@place.name}!")
  end
end
