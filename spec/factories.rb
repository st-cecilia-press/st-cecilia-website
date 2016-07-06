FactoryGirl.define do
  factory :book_content do
    book 
    piece 
  end
  factory :book do
    title "MyString"
  end
  factory :manuscript_content do
    manuscript
    piece 
  end
  factory :manuscript do
    name "Blackcloak Manuscript"
    slug "manuscript_slug"
  end
  factory :piece do
    title "My Piece"
    composer
    repo "repo"
    slug "page_slug"
  end
  factory :composer do
    name "Josquin"
  end
end
