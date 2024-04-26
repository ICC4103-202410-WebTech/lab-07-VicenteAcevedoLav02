class Tag < ApplicationRecord
     # Validaciones
    validates :name, presence: { message: "NAME please!!! I don't have all day" },
    uniqueness: { message: "Yo, try to be more original, that name's already in use!!" }
    has_many :post_tags, class_name: 'PostTag'
    has_many :posts, through: :post_tags
end
