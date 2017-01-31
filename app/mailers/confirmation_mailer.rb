class ConfirmationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confirmation_mailer.new_confirmation.subject
  #
  def new_confirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
