class Rooad < ApplicationRecord
  belongs_to :user
  has_many   :repetitions, inverse_of: :rooad, dependent: :destroy
  accepts_nested_attributes_for :repetitions,  allow_destroy: true
  validates_associated :repetitions

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :status

  with_options presence: true do
    validates :title, length: { maximum: 30 }
    validates :status_id, numericality: { other_than: 1, message: 'どちらか選択してください' }
  end
  validates :detail, length: { maximum: 1000 }
end
