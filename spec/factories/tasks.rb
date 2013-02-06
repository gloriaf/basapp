FactoryGirl.define do
# Crea topicos genericos
  factory :task do
    sequence(:code) { |n| "T#{n *10}" }
    sequence(:title) { |n| "Task #{n *10}" }
    sequence(:sequence) {|n| n * 10 }   
    rroute   ""
    description   "description"
    general true
    active true
  end

end