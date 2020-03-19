class EmployeesController < ApplicationController
    before_action :set_employee, [:show, :edit, :update]

    def index
        @employees = Employee.all
    end

    def show

    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)

        if @employee.valid?
            @employee.save
            redirect_to @employee
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @employee.valid?
            @employee.update(employee_params)
            redirect_to @employee
        else
            render :edit
        end
    end

    private

    def set_employee
        @employee = Employee.find_by(id: params[:id])
    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :title, :office, :img_url, :dog_id)
    end
end
