class Figure < ActiveRecord::Base
  # add relationships here
  has_many :landmarks
  has_many :firgure_titles
  has_many :titles, through: :figure_titles
end
