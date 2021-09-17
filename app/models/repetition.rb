class Repetition < ApplicationRecord
  belongs_to :rooad

  with_options presence: true do
    validates :name, length: { maximum: 30 }
    validates :period, numericality: { in: 1..100 },
    format: { with: /\A[0-9]+\z/ }
  end
  validates :memo, length: { maximum: 30 }
# フォームの制限20
end
