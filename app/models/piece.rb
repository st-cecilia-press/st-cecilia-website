class Piece < ActiveRecord::Base
  belongs_to :composer
  validates :title, :composer, :repo, :slug, presence: true  
end
