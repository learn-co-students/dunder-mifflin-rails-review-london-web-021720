class DogsController < ApplicationController
    def index 
        @dogs = Dog.all 
    end 

    def new

    end 

    def show 
        @dog = Dog.find(params[:id])
    end 

    def create 
        
    end 

    def edit 

    end 

    def update 

    end 

    def delete 

    end 

end
