require 'rails_helper'

describe 'PostAPI' do
  it '全てのpostを取得' do
    FactoryBot.create_list(:post, 10)

    get "/api/v1/posts"
    json = JSON.parse(response.body)

    #リクエストが200返ってきたか確認
    expect(response.status).to eq(200)

    #正しい数のデータが返されたか確認
    # expect(json['data'].length).to eq 10
  end

  it '特定のpostを取得' do
    post = Post.new(title: 'test-title')

    get "/api/v1/posts/#{post.id}"
    json = JSON.parse(response.body)

    #リクエストが200返ってきたか確認
    expect(response.status).to eq(200)

    #正しい数のデータが返されたか確認
    # expect(json['data']['title']).to eq post.title
  end
end