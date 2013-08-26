module Api
  module V1
    class BanksController < ApplicationController
      def index
        @banks = BanksSearch.new(Bank.scoped, params[:q])
      end

      def show
        @bank = Bank.find_by(code: params[:id])
      end
    end
  end
end
