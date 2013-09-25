module Admins
  class BanksController < ApplicationController
    def index
      @banks = BanksSearch.new(Bank.scoped, params[:q]).
        order_by(:code.asc).page(params[:page])
    end

    def show
      @bank = Bank.find(params[:id])
    end

    def edit
      @bank = Bank.find(params[:id])
    end

    def update
      @bank = Bank.find(params[:id])
      if @bank.update_attributes(params.require(:bank).permit!)
        redirect_to @bank
      else
        render :edit
      end
    end

    def destroy
      @bank = Bank.find(params[:id])
      @bank.destroy
      redirect_to banks_path
    end
  end
end
