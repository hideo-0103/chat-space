FactoryBot.define do
  factory :message do
    content {"hello!"}
    image {File.open("#{Rails.root}/public/image/test_image.jpg")}
    user
    group
  end
end