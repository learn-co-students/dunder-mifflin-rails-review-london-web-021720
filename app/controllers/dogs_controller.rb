class DogsController < ApplicationController
    before_action :set_dog, only: :show

    def index
        @dogs = Dog.all
    end

    def show
    end

    private

    def set_dog
        @dog = Dog.find_by(id: params[:id])
        @dog_employees = @dog.employees
    end
end
