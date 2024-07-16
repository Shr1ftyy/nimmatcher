import std/tables

type
    Side* = enum Bid, Ask

    Order* = object
        orderId*: string
        side*: Side
        price*: float
        quantity*: float

    Level* = object 
        price*: float
        quantity*: float

    OrderBook* = object
        ticker*: string
        orders*: ref Table[string, ref Order]
        levels*: seq[Level]

    Exchange* = object
        orderbooks*: Table[string, ref OrderBook]

# proc hash*(orderbook: OrderBook): Hash = 
#   result = orderbook.ticker.hash !& orderbook.ticker.hash
#   result = !$result
#   return result
