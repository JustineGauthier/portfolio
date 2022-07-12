class Project < ApplicationRecord
  belongs_to :categorie
  has_one_attached :photo
end
