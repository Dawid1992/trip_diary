require 'rails_helper'

RSpec.describe Post, type: :model do
let(:user) { FactoryBot.create(:user) }
  let(:post) { FactoryBot.create(:post) }

  it 'is valid with valid attributes' do
    expect(post).to be_valid
  end

  it 'is not valid without city' do
    post.city = nil
    expect(post).to_not be_valid
  end

  it 'is not valid without note' do
    post.note = nil
    expect(post).to_not be_valid
  end

  it 'is not valid without temperature' do
    post.temperature = nil
    expect(post).to_not be_valid
  end
end
