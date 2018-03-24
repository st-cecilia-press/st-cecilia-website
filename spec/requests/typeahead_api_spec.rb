require 'rails_helper'
describe 'GET /api/pieces' do
  it "shows list of pieces" do
    composer = create(:composer, name: 'Name')
    piece = create(:piece, title: 'My Piece', composer: composer, slug: 'my_piece')
    get '/api/pieces'
    expect(response).to have_http_status(:success)
    expect(response.body).to include(piece.title)
    expect(response.body).to include(piece.slug)
    expect(response.body).to include(piece.composer.name)
  end
end
