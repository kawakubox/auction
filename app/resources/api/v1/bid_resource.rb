module Api
  module V1
    class BidResource < JSONAPI::Resource
      attributes :bidded_at, :amount

      has_one :auction
      has_one :bidder
    end
  end
end
