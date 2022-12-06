class Item < ApplicationRecord
    #Validation for product name
    validates :name,
      :presence=> {:message=> "can't be empty" },
      :length=> { maximum: 2 } 
   

    #Set up relationships with supliers
    has_many :suppliers
end
