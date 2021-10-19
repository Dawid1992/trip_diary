require 'rails_helper'

RSpec.describe "/posts", type: :request do
  let(:user) { FactoryBot.create(:user) }
  before { sign_in user }

  let(:valid_attributes) {
    { city: 'Warsaw', note: 'Note one two three', temperature: 29, user_id: user.id }
  }

  let(:invalid_attributes) {
    { city: 'Ąścas', note: nil, temperature: 'asd', user_id: nil}
  }

  describe "GET /index" do
    it "renders a successful response" do
      get posts_url
      expect(response).to be_successful
    end
  end

  context 'when the user is logged in' do
    before do
      sign_in user
    end

    it 'renders post index page that contains posts' do
      get(posts_path)
      expect(response).to be_successful
    end

    it 'renders post new page that contains form' do
      get(new_post_path)
      expect(response).to be_successful
    end
  end
end
