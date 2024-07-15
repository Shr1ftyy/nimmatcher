import matcher/types
import matcher/procs
import std/tables

proc main() = 
    # order
    var order: Order = (orderId: "test", side: Bid, price: 69.42, quantity: 20.0) 
    echo order

    # orderbook
    var orders = new Table[string, Order]
    var orderbook: OrderBook = ("AAPL", orders, newSeq[Level]())
    echo orderbook

    # exchange
    var exchange: Exchange

    # addOrderBook(exchange, orderbook)

    echo exchange

main()