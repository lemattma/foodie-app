require 'rails_helper'

RSpec.describe 'recipes/show', type: :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(name: 'My Recipe'))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/My Recipe/)
  end
end
