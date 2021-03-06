# frozen_string_literal: true
class AuctionsController < ApplicationController
  def create
    p = params.require(:auction).permit(:exhibitor, :title)
    user = User.find(p[:exhibitor])
    raise ActiveRecord::RecordNotFound if user.blank?
    @auction = Auction.create(exhibitor_id: user.id, title: p[:title])
    respond_to do |format|
      format.json { render status: :created, json: @auction }
    end
  end
end
