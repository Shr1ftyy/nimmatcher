import types
import std/tables

proc addOrderBook*(exchange: ref Exchange, orderbook: ref OrderBook) =
    # exchange.orderbooks[orderbook.ticker] = orderbook
    if len(exchange.orderbooks) <= 0:
        exchange.orderbooks = initTable[string, ref OrderBook]()
    exchange.orderbooks[orderbook.ticker] = orderbook

proc newOrderBook*(ticker: string): ref OrderBook =
    var orderbook = new(OrderBook)
    var orders = new Table[string, ref Order]
    orderbook.ticker = ticker
    orderbook.orders = orders
    orderbook.levels = newSeq[Level]()
    return orderbook

proc addStock*(exchange: ref Exchange, ticker: string) =
    var orderbook = newOrderBook(ticker)
    addOrderBook(exchange, orderbook)
