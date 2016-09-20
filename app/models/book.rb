class Book < ActiveRecord::Base
  has_many :reviews
  belongs_to :publish
  validates_length_of :isbn, :maximum => 13
end
