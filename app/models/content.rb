class Content < ApplicationRecord
  validates :title, length: {maximum: 200}, :allow_blank => true, if: :has_any_content?
  validates :paragraph, if: :has_any_content?
  validates :list, if: :has_any_content?

  def has_any_content?
    title.present? || paragraph.present || list.present?
  end
  
end
