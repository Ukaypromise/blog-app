require 'rails_helper'

RSpec.describe Like, type: :model do
  before(:all) do
    @user = User.new(name: 'John', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
    @post = Post.new(title: 'My first post', text: 'This is my first post.', author: @user, comments_counter: 4, likes_counter: 6)
  end

    context 'Implementating Test for like model' do
        it 'is only valid with a user' do
            like = Like.new(users: @user, posts: @post)
            expect(like).to be_valid
        end

        it 'is valid with a post' do
            like = Like.new(users: @user, posts: @post)
            expect(like).to be_valid
        end

        it 'should increment and update likes_counter by 1' do
            @post.increment!(:likes_counter)
            expect(@post.likes_counter).to eq(7)
        end
    end
end