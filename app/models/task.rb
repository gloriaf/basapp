class Task < ActiveRecord::Base
  attr_accessible :active, :code, :description, :general, :rroute, :sequence, :title
  
  default_scope order: 'sequence, created_at DESC'
  
  validates :code,     presence: true
  validates :title,    presence: true
  validates :sequence, presence: true, numericality: { greater_than: 0 }

end
