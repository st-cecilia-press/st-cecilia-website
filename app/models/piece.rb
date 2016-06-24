class Piece < ActiveRecord::Base
  belongs_to :composer
  validates :title, :composer, :slug, presence: true  
end
