class Piece < ActiveRecord::Base
  has_many :manuscript_contents
  has_many :manuscripts, through: :manuscript_contents

  has_many :book_contents
  has_many :books, through: :book_contents

  has_many :song_voicings
  has_many :voicings, through: :song_voicings

  has_many :publicationships
  has_many :repositories, through: :publicationships

  belongs_to :composer
  validates :title, :composer, :slug, presence: true  

  def url
    return "/pieces/#{self.slug}"
  end

  def image_repo
      if self.repositories.find_by(name: 'miscellaneous')
          return 'miscellaneous'
      else
          return self.repositories.first.name
      end
  end
end
