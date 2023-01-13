class Mainsupplier < ApplicationRecord

    #set up relationships with items
    #has_many :items, class_name: "Item"    

    #validations for supplier name
    validates :name,
    :presence=> {:message=> "can't be empty" },
    :length=> { minimum: 2 }
end
