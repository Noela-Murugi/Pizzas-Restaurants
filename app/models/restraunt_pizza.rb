class RestrauntPizza < ApplicationRecord
  validates :price , presence: true , numericality: { only_integer: true , greater_than_or_equal_to: 1 , less_than_or_equal_to: 30 }
  belongs_to :pizza
  belongs_to :restraunt
end
