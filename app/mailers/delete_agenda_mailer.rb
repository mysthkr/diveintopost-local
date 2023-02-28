class DeleteAgendaMailer < ApplicationMailer
  def delete_agenda_mail(deleted_agenda)
    @agenda = deleted_agenda
    @assigns = Assign.where(team_id: @agenda.team_id).select(:user_id)

    send_emails = []
    @assigns.each do |assign|
      @user = User.find(assign.user_id)
      send_emails << @user.email
    end
    mail to: send_emails, subject: "アジェンダが削除されました。"
  end
end
