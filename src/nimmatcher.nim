import matcher/types
import matcher/procs
import std/tables
import pretty

proc main() = 
    # order
    var order: Order = Order(orderId: "test", side: Bid, price: 69.42, quantity: 20.0) 
    print order

    # orderbook
    var orderbook = newOrderBook("APPL")

    # exchange
    var exchange = new(Exchange)
    addOrderBook(exchange, orderbook)
    addStock(exchange, "TSLA")

    print exchange

main()