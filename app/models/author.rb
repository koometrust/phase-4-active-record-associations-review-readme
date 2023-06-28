class Author < ApplicationRecord
    has_many :posts
  
    # add this:
    has_one :profile
  end
  
  class Profile < ApplicationRecord
    # add this:
    belongs_to :author
  end

puts author.profile
#=> #<Profile @username="ljenk">

puts profile.author