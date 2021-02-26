class BudgetsController < ApplicationController
    def index
        budgets = Budget.all

        render json: budgets.to_json(except: [:created_at, :updated_at])
    end
end
