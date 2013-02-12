FactoryGirl.define do
# Crea topicos genericos
#  factory :project do
#    sequence(:name) { |n| "Test project#{n}" }
#    sequence(:type) { |n| "Technologie" }
#    description   "description"
#  end
  factory :project do
    name "Project"
    project_type "Project type"
    description "project description"
  end
end