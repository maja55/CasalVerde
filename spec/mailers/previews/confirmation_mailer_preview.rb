# Preview all emails at http://localhost:3000/rails/mailers/confirmation_mailer
class ConfirmationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/confirmation_mailer/new_confirmation
  def new_confirmation
    ConfirmationMailerMailer.new_confirmation
  end

end
