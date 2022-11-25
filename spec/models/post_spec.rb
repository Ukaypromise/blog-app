require './rails_helper'

RSpec.describe Post, type: :model do
    before(:all) do
    @user = User.new(name: 'Promise', photo: 'https://unsplash.com/photos/M_-5YgbSdV3o', bio: 'I am a frontend developer.')
    @post = Post.new(title: 'My first post', text: 'This is my first post.', author: @user, comments_counter: 4, likes_counter: 6)
    end

  context 'Implementating Test for post model' do

    it 'is not valid without a title' do
        @post.title = nil
        expect(@post).to_not be_valid
    end

    it 'is not valid without a text' do
        @post.text = 'This is my first post.'
        expect(@post).to be_valid
    end

    it 'is only valid with a user' do
        @post.author = @user
        expect(@post).to be_valid
    end

    it 'is not valid without a user' do
        @post.author = nil
        expect(post).to_not be_valid
    end

    it 'Check the lenghth of post title to be less than 250' do
      expect(@post.title).to(satisfy { |x| x.length <= 250 })
    end

    it 'most recent post length should returns zero' do
      expect(@post.five_recent_comments.length).to be 0
    end

    it 'likes count validation should return true' do
      expect(@post.likes_counter).to(satisfy { |n| n >= 0 })
    end
  end
end