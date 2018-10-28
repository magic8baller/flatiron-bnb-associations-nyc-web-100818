class User < ActiveRecord::Base
  belongs_to :host
  belongs_to :guest
  has_many :listings, :foreign_key => 'host_id'
  has_many :listings, :foreign_key => 'guest_id'
  has_many :reservations, :foreign_key => 'host_id', through: :listing
  has_many :reviews, :foreign_key => 'guest_id', through: :reviews


  def guests

  end



end