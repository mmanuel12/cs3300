class Project < ApplicationRecord
    validates_presence_of :title, :description, :image

    belongs_to :user, optional: true
    
    has_one_attached :image

    
  end
  