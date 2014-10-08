class Compound < ActiveRecord::Base
  belongs_to :kanji
  
  validates :level, presence: true
end
