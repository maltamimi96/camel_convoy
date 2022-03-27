class PagesController < ApplicationController
    def index
        @Products=Product.all

    end



    def shop
        @Products=Product.all
    end 

end
