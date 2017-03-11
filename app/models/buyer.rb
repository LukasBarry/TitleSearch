class Buyer < ActiveRecord::Base
  validates :current_owner, :borrower, :property_address_street, presence: true
  validates :property_address_number, numericality: { greater_than_or_equal_to: 0 }
  belongs_to :user
  has_many :title_reports
  accepts_nested_attributes_for :title_reports, reject_if: :all_blank,
                                                allow_destroy: true
end
