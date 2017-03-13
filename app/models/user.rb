class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  has_many :buyers, dependent: :destroy
  has_many :title_companies, dependent: :destroy
  accepts_nested_attributes_for :title_companies, reject_if: :all_blank,
                                                  allow_destroy: true
end
