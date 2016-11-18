module Api
  module V1
    class AuctionResource < JSONAPI::Resource
      attributes :title

      has_one :exhibitor
      has_many :bids
    end
  end
end
