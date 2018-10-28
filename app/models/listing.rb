class Listing < ActiveRecord::Base
  belongs_to :host, :class_name => "User"
  belongs_to :neighborhood
  has_many :reservations
  has_many :reviews
  has_many :guests, :class_name => "User", through: :reservations
end