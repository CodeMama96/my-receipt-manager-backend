class BudgetsController < ApplicationController
    def index
        budgets = Budget.all

        render json: budgets.to_json(except: [:created_at, :updated_at])
    end

    def create
        budget = Budget.new(budget_params)
        
        if budget.save 
            render json: budget.to_json(except: [:created_at, :updated_at])
        else 
            render json: {error: "No Transaction Entered."}
        end
    end

    def show
        budget = Budget.find(params[:id])
        render json: budgets.to_json(except: [:created_at, :updated_at])
    end

    def destroy
        budget = Budget.find(params[:id])
        budget.destroy 
        render json: {message: "successfully deleted #{budget.name}"}
    end

    private

    def budget_params
        params.require(:budget).permit(:name, :amount, :date)
    end

end
