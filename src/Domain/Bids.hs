{-# LANGUAGE DeriveGeneric     #-}
module Domain.Bids (module Domain.Bids) where
import Money
import Domain.Prelude
import GHC.Generics
import Data.Time

data Bid = Bid BidId AuctionId UserId UTCTime Amount deriving (Generic, Show)

bidId :: Bid -> BidId
bidId (Bid bidId _ _ _ _) = bidId

forAuction :: Bid -> AuctionId
forAuction (Bid _ auction _ _ _) = auction

bidder :: Bid -> UserId
bidder (Bid _ _ user _ _) = user

at :: Bid -> UTCTime
at (Bid _ _ _ time _) = time

bidAmount :: Bid -> Amount
bidAmount (Bid _ _ _ _ amount) = amount
