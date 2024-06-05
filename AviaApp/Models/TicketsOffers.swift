//
//  TicketsOffers.swift
//  AviaApp
//
//  Created by Антон Пеньков on 05.06.2024.
//

struct TicketsOffers: Decodable {
    let ticketsOffers: [TicketsOffer]
}

struct TicketsOffer: Decodable {
    let id: Int
    let title: String
    let timeRange: [String]
    let price: TicketPrice
}

struct TicketPrice: Decodable {
    let value: Int
}

extension TicketsOffer {
    static func getTicketOffer() -> TicketsOffer {
        TicketsOffer(
            id: 1,
            title: "Уральские авиалинии",
            timeRange: [
                "07:00",
                "09:10",
                "10:00",
                "11:30",
                "14:15",
                "19:10",
                "21:00",
                "23:30"
              ],
            price: TicketPrice(value: 3999)
        )
    }
}
