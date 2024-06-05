//
//  OfferViewModel.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

class OfferViewModel {
    var id: Int {
        offer.id
    }
    
    var title: String {
        offer.title
    }
    
    var town: String {
        offer.town
    }
    
    var price: String {
        "от \(offer.price.value) ₽"
    }
    
    private let offer: Offer
    
    init(offer: Offer) {
        self.offer = offer
    }
}
