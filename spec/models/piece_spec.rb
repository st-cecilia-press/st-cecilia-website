require 'rails_helper'
require 'fileutils'
require 'tempfile'

RSpec.describe Piece, type: :model do
  it { should have_many(:manuscript_contents) }
  it { should have_many(:manuscripts).through(:manuscript_contents)}

  it { should have_many(:book_contents) }
  it { should have_many(:books).through(:book_contents)}

  it { should have_many(:song_voicings) }
  it { should have_many(:voicings).through(:song_voicings)}

  it { should belong_to(:composer) }
end

RSpec.describe Piece, "validations" do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:composer) }
  it { is_expected.to validate_presence_of(:slug) }
  it { is_expected.to validate_presence_of(:repo) }
end

RSpec.describe Piece, "editions" do
  before(:each) do
    @public_path = Rails.public_path.to_s
    Dir.mkdir("#{@public_path}/repo")
    Dir.mkdir("#{@public_path}/repo/slug")
    @path = "#{@public_path}/repo/slug"
  end 
  after(:each) do
    FileUtils.rm_r "#{@public_path}/repo" 
  end
  it "returns hash with pdfs and midi if no _mute.mid exists" do
    piece = create(:piece, repo: 'repo', slug: 'slug')
    pdf = File.new("#{@path}/slug.pdf", "w")
    pdfTransposed = File.new("#{@path}/slug-transposed.pdf", "w")
    editions = piece.editions
    expect(editions).not_to be_nil 
    
 end 

  it "returns hash with pdfs and part midis and mp3s if _mute.mid exists" do
    
    piece = create(:piece, repo: 'repo', slug: 'slug')
    pdf = File.new("#{@path}/slug.pdf", "w")
    pdfTransposed = File.new("#{@path}/slug-transposed.pdf", "w")
    midi_mute = File.new("#{@path}/slug_cantus_mute.mid", "w")
    lily = File.new("#{@path}/slug.ly", "w")
    lily.write('scMusicOneName = "cantus"')
     
    editions = piece.editions
    expect(editions).not_to be_nil 
    
  end
  
end
RSpec.describe Piece, "parts" do
  it "gets list of parts and their order" do
    fake_ly = Tempfile.new('lily')
      
    fake_ly.write( %q{
scMusicOneName = "cantus"
scMusicTwoName = "altus"
scMusicThreeName = "tenor"
    } )
    fake_ly.close
    piece = create(:piece)
    parts = piece.parts(fake_ly.path)
    fake_ly.unlink
    expect(parts.any? { |part| (part[:name] == 'cantus' && part[:order] == 1) }).to be
    expect(parts.any? { |part| (part[:name] == 'altus' && part[:order] == 2) }).to be
    expect(parts.any? { |part| (part[:name] == 'tenor' && part[:order] == 3) }).to be
    
    
  
  end
end
RSpec.describe Piece, "url" do
  it "returns only slug if it is the only piece with said slug" do
    piece = create(:piece)
    url = piece.url
    expect(url).to eq("/pieces/#{piece.slug}")
  end
  it "returns repo and slug if there are multiple pieces with the same slug" do
    piece = create(:piece, repo: 'repo1', slug: 'slug')
    piece2 = create(:piece, repo: 'repo2', slug: 'slug')
    url = piece.url
    expect(url).to eq("/pieces/repo1/slug")
  end
end
