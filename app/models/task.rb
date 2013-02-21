class Task < ActiveRecord::Base
  attr_accessible :active, :code, :description, :general, :rroute, :sequence, :title
  
  default_scope order: 'sequence, created_at DESC'

  translates :title, :description
<<<<<<< HEAD
=======
  
>>>>>>> ea99679ccc88ab4568de0fd90a8ca8df6feac87c
  validates :code,     presence: true
  validates :title,    presence: true
  validates :sequence, presence: true, numericality: { greater_than: 0 }

end
