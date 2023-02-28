class ChangeOwnerMailer < ApplicationMailer
  def change_owner_mail(user)
    @user = user
    mail to: @user.email, subject: 'オーナーに指定されました'
  end
end
