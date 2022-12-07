class Supplier < ApplicationRecord
    has_many :items
    #belongs_to :item
    
    #validates :name,
    #    :length=> { maximum: 2 }
    #validates :provides,
    #    :presence=> {:message=> "can't be empty" }
    #validates :sname,
    #  :presence=> {:message=> "can't be empty" },
    #  :length=> { minimum: 2 } 
end
