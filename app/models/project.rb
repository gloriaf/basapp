class Project < ActiveRecord::Base
  attr_accessible :description, :end, :name, :start, :project_type
  
  default_scope order: 'created_at DESC'
  
  validates :name,     presence: true
end
