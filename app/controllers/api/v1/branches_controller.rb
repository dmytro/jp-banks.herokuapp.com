module Api
  module V1
    class BranchesController < ApplicationController
      before_action :set_bank

      def index
        @branches = BranchesSearch.new(@bank.branches, params[:q])
      end

      def show
        @branch = @bank.branches.find_by(code: params[:id])
      end

      private

      def set_bank
        @bank = Bank.find_by(code: params[:bank_id])
      end
    end
  end
end
