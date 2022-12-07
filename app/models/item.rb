class Item < ApplicationRecord
    #Set up relationships with supliers
    #has_many :suppliers
    belongs_to :supplier

    #Validation for product name
    validates :name,
      :presence=> {:message=> "can't be empty" },
      :length=> { minimum: 2 } 
   


end
