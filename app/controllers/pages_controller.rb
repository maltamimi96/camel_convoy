class PagesController < ApplicationController
   
   include CurrentCart
   before_action :set_cart,only: [:index,:shop]
   
   
    def index
        @Products=Product.all

    end



    def shop
        @Products=Product.all
    end 


    

end
