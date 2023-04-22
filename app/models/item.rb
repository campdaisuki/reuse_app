class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :condition
  belongs_to :receive

  validates :condition_id, numericality: { other_than: 1 } 
  validates :condition_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :receive_id, numericality: { other_than: 1 } 
  validates :receive_id, numericality: { other_than: 1 , message: "can't be blank"}
end
