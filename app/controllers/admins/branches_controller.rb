module Admins
  class BranchesController < ApplicationController
    before_action :set_bank

    def index
      @branches = BranchesSearch.new(@bank.branches, params[:q]).order_by(:code.asc).page(params[:page])
    end

    def show
      @branch = @bank.branches.find(params[:id])
    end

    def edit
      @branch = @bank.branches.find(params[:id])
    end

    def update
      @branch = @bank.branches.find(params[:id])
      if @branch.update_attributes(params.require(:branch).permit!)
        redirect_to [@bank, @branch]
      else
        render :edit
      end
    end

    def destroy
      @branch = @bank.branches.find(params[:id])
      @branch.destroy
      redirect_to bank_branches_path(@bank)
    end

    private

    def set_bank
      @bank = Bank.find(params[:bank_id])
    end
  end
end
