class Project < ActiveRecord::Base
  attr_accessible :description, :end, :name, :start, :project_type
end
