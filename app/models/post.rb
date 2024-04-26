class Post < ApplicationRecord
    # VALIDACIONES DEL ENUNCIADO
    # Validaciones
    validates :title, presence: { message: "What the HECK!? Please, add a Title!" }
    validates :content, presence: { message: "Why bother creating a post if there's nothing on it! Try again, with some content this time" }
    validates :user_id, presence: { message: "Who did this!? (Laughing crying emoji)... no, seriously, you didn't specify... who did this?" }
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "Lets keep it positive or neutral dude! Numbers OVER -1 please." }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "Why whas 6 afraid of 7? BECAUSE SEVEN ATE NINE!!!... also, the post should have at least 0 likes. " }
    before_validation :set_default_published_at, if: -> { new_record? }
  
    belongs_to :user, class_name: 'User'
    has_many :post_tags
    has_many :tags, through: :post_tags
    
    # Relación uno a uno para la relación post-to-post
    belongs_to :parent_post, class_name: 'Post', optional: true
    has_many :sub_posts, class_name: 'Post', foreign_key: 'parent_post_id'
  
    private
  
    def set_default_published_at
      self.published_at ||= Time.current
    end
end
  