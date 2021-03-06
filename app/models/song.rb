class Song < ActiveRecord::Base


   validates :title, presence: true
   validates :title, uniqueness: { scope: [:artist_name, :release_year] }
   validates :artist_name, presence: true
   validates :released, inclusion: { in: [true, false] }
   validates :release_year, numericality: { less_than_or_equal_to: Time.current.year }, presence: true, if: :released


end
