class AssignMailer < ApplicationMailer
  default from: 'mysthkr95342@gmail.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end
end