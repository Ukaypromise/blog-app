require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Promise', photo: 'https://unsplash.com/photos/M_-5YgbSdV3o', bio: 'I am a frontend developer', posts_counter: 4) }
  before { subject.save }

  it 'name should have attributes' do
    subject.name = 'Promise'
    expect(subject).to be_valid
  end

  it 'name should not be blank or less than 3 letters' do
    subject.name = nil
    subject.name = 'Pr'
    expect(subject).to_not be_valid
  end

  it 'returns photo if valid' do
    subject.photo = 'https://unsplash.com/photos/M_-5YgbSdV3o'
    expect(subject).to be_valid
  end

  it 'is valid with a bio' do
    subject.bio = 'I am a frontend developer'
    expect(subject).to be_valid
  end

  it 'post_counter should must be an integer' do
    subject.posts_counter = 1
    expect(subject).to be_valid
  end

  it 'is not valid if post counter is a string or nil' do
    subject.posts_counter = 'four'
    subject.posts_counter = nil
    expect(subject).to_not be_valid
  end

  it 'Recent post method should return zero' do
    expect(subject.three_most_recent_post.length).to be 0
  end
end