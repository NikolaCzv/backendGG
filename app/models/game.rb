class Game < ApplicationRecord
    has_many :reviews
    #  include_nested_associations: true
    has_many :users, through: :user

    validates :title, uniqueness: { case_sensitive: false }
    # accepts_nested_attributes_for :reviews
end
