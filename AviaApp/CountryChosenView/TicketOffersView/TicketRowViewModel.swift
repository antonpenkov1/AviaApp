//
//  TicketOfferViewModel.swift
//  AviaApp
//
//  Created by Антон Пеньков on 05.06.2024.
//

class TicketRowViewModel {
    var companyName: String {
        ticketOffer.title
    }
    
    var timeRange: String {
        ticketOffer.timeRange.joined(separator: " ")
    }
    
    var price: String {
        "\(ticketOffer.price.value) ₽"
    }
    
    private let ticketOffer: TicketsOffer
    
    init(ticketOffer: TicketsOffer) {
        self.ticketOffer = ticketOffer
    }
}
