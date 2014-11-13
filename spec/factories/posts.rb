FactoryGirl.define do
  factory :post do
    user
    sequence(:title) {|n| "post title #{n}"}
    body { "#{title} \nbody "}
  end
end
