class PagesController < ApplicationController
   
   include CurrentCart
   before_action :set_cart,only: [:index,:shop]
   
   
    def index
        @Products=Product.all

    end



    def shop
        @Products=Product.all
    end 

    def new
       # @Product = current_user.products.build
       @Product =Product.new
      end


      def create
        #@@product = @product.new(@product_params)
        @Product = Product.create(product_params)
    
        respond_to do |format|
          if @Product.save
            format.html { redirect_to new_product_path, notice: "@product was successfully created." }
            format.json { render :show, status: :created, location: @product }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @product.errors, status: :unprocessable_entity }
          end
        end
      end


private


    def set_product
        @product = Product.find(params[:id])
        
      end
    def product_params
        params.require(:product).permit(:title, :description, :price,:picture )
       
    end


  

    

end
