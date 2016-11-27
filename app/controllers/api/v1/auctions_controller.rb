# frozen_string_literal: true

module Api
  module V1
    class AuctionsController < ActionController::API
      def create
        @auction = Auction.create(params_for_create)
      end

      private

      def params_for_create
        {
          title: params.permit(:title),
          exhibitor_id: params.permit(:exhibitor),
          starting_price: params.permit(:starting_price),
        }
      end
    end
  end
end
