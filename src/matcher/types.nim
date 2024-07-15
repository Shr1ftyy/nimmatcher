import std/tables

type
    Side = enum Bid, Ask

    Order = tuple
        orderId: string
        side: Side
        price: float
        quantity: float

    Level = tuple 
        price: float
        quantity: float

    OrderBook = tuple
        ticker: string
        orders: ref Table[string, Order]
        levels: seq[Level]

    Exchange = tuple
        orderbooks: Table[string, OrderBook]


export Side
export Order
export Level
export OrderBook
export Exchange