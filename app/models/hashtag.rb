class Hashtag < ActiveRecord::Base
        has_and_belongs_to_many :posts

end