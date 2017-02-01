class Booking < ApplicationRecord
  validates :first_name, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email, :email_confirmation, presence: true


  validates :first_name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :last_name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :street, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :house_number, numericality: {
    only_integer: true,
    greater_than: 0,
    message: "only allows numbers"
  }
  validates :email, confirmation: { case_sensitive: false }
  validates :city, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :phone_number, numericality: {
    only_integer: true,
    message: "only allows numbers"
  }

end
