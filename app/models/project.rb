class Project < ActiveRecord::Base
  attr_accessible :description, :end, :name, :start, :type
end
