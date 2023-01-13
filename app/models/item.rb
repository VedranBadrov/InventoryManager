class Item < ApplicationRecord
    #Set up relationships with suppliers
    #belongs_to :Mainsupplier, class_name: 'Mainsupplier'
    


    #Validation for product name
    validates :name,
      :presence=> {:message=> "can't be empty" },
      :length=> { minimum: 2 }
end
