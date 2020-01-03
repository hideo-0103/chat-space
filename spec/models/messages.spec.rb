require 'rails_helper'

describe Message do
  it "is invalid with a content,image" do
    message = build(:message)
    expect(message).to be_valid
  end
  it "is invalid without a content" do
    message = build(:message, content: "")
    message.valid?
    expect(message).to be_valid
  end
  it "is invalid without a image" do
    message = build(:message, image: "")
    message.valid?
    expect(message).to be_valid
  end
  it "is invalid without a content,image" do
    message = build(:message, content: nil, image: nil)
    message.valid?
    expect(message.errors[:content]).to include("を入力してください")
  end
  it "is invalid without a group_id" do
    message = build(:message, group: nil)
    message.valid?
    expect(message.errors[:group]).to include("を入力してください")
  end
  it "is invalid without a user_id" do
    message = build(:message, user: nil)
    message.valid?
    expect(message.errors[:user]).to include("を入力してください")
  end
end