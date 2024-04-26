class User < ApplicationRecord
     # Validaciones
    validates :name, presence: { message: "Hey papu! You MUST have a name, so don't be shy and add yours!." }
    validates :email, presence: { message: "Sacrebleu, as the french people say! Don't leave your email on blank!" },
                        uniqueness: { message: "Oopsie Daisy! that email has already been used!" },
                        format: { with: URI::MailTo::EMAIL_REGEXP, message: "Yo yo yo!! Do I seem like I speak gibberish! That email sucks! Write one that respects the format, G" }
    validates :password, presence: { message: "Ermmm... what the sigma? You NEED a password! so go ahead and figure one out" },
                        length: { minimum: 6, message: "Let's keep it real here, EVERYONE can guess a password with less than 6 letters! So use more!" }
    has_many :posts
end