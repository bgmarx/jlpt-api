class Vocabulary < ActiveRecord::Base
  validates :level, presence: true
end
