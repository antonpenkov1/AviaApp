//
//  Offer.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

struct Offers: Decodable {
    let offers: [Offer]
}

struct Offer: Decodable {
    let id: Int
    let title: String
    let town: String
    let price: Price
}

struct Price: Decodable {
    let value: Int
}

extension Offer {
    static func getOffer() -> Offer {
        Offer(
            id: 1,
            title: "Offer name",
            town: "Town name",
            price: Price(value: 2000)
        )
    }
}
