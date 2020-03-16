class Game < ApplicationRecord
    has_many :reviews
    has_many :users, through: :user

    validates :title, uniqueness: { case_sensitive: false }
end
