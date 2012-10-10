FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Member #{n}" }
    sequence(:email) { |n| "member_#{n}@ymail.com"}   
    password "foobarfgfh"
    password_confirmation "foobarfgfh"
    
    factory :admin do
       admin true
    end
  end
  
  factory :micropost do
      content "Lorem ipsum"
      user
  end
end
