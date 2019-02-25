FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "dmutuba #{n}" }
    name { 'Daniel Mutuba' }
    url { 'http://example.com ' }
    avatar_url { 'http://example.com/avatar ' }
    provider { 'Github' }
  end
end
