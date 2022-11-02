require 'rails_helper'
# https://semaphoreci.com/community/tutorials/how-to-test-rails-models-with-rspec
RSpec.describe Product, :type => :model do
  subject { build(:product_1) }

  it "is valid with valid attributes" do
    subject.title = "Anything"
    subject.description = "Anything"
    subject.image_url = nil
    subject.price = 1.0
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a price with -1" do
    subject.price = -1
    expect(subject).to_not be_valid
  end

  describe 'is not valid without a uniqueness title' do
    before { create(:product_1) }

    it { expect(subject).to_not be_valid }
  end
end
