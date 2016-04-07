require 'rails_helper'

RSpec.describe 'Recipe', type: :request do
  describe 'GET /recipes' do
    it 'shows a list of recipes' do
      get recipes_path
      expect(response).to render_template(:index)
      expect(response).to have_http_status(200)
    end
  end

  it 'creates a Recipe and redirects to the Recipe\'s page' do
    get '/recipes/new'
    expect(response).to render_template(:new)

    post '/recipes', recipe: { name: 'My Recipe' }

    expect(response).to redirect_to(assigns(:recipe))
    follow_redirect!

    expect(response).to render_template(:show)
    expect(response.body).to include('Recipe was successfully created.')
  end
end
