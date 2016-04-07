require 'rails_helper'

RSpec.describe Recipe, type: :model do
  context 'validations' do
    it 'is invalid without a name' do
      post = Recipe.new(name: nil)
      expect(post).not_to be_valid
    end

    it 'is valid with a name' do
      post = Recipe.new(name: 'Recipe')
      expect(post).to be_valid
    end
  end
end
