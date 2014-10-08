class Kanji < ActiveRecord::Base
  has_many :compounds, dependent: :destroy
  
  validates :level, presence: true
end
