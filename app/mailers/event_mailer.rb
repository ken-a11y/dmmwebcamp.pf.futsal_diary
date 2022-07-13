class EventMailer < ApplicationMailer

  def send_notification(user, event)
    @team = event[:team]
    @title = event[:title]
    @body = event[:body]

    @mail = EventMailer.new()
    mail(
      from: @team.owner.email,
      to:   user.email,
      subject: 'New Event Notice!!'
    )
  end

  def self.send_notifications_to_team(event)
    team = event[:team]
    team.users.each do |user|
      EventMailer.send_notification(user, event).deliver_now
    end
  end

end
