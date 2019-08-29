class Title < ActiveRecord::Base
  # add relationships 
  has_many :firgure_titles
  has_many :figures, through: :figure_titles
end
