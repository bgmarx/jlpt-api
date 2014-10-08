class Compound < ActiveRecord::Base
  belongs_to :kanji, touch: :compounds_updated_at
end
