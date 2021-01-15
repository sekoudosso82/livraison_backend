class Deliver < ApplicationRecord
    has_many :notations, dependent: :destroy
 
end
