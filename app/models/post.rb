class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 10}
    validates :text, presence: true, length: { maximum: 255}
end
