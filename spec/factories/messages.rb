FactoryBot.define do
  factory :message do
    content {"hello!"}
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'public/image/test_image.jpg')) }
    # image {File.open("#{Rails.root}/public/image/test_image.jpg")}
    user
    group
  end
end