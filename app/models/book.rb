class Book < ActiveRecord::Base
  validates_length_of :isbn, :maximum => 13
  has_many :reviews
  belongs_to :publish
end
