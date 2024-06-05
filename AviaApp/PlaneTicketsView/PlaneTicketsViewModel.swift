//
//  PlaneTicketsViewModel.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

import SwiftUI

@MainActor class PlaneTicketsViewModel: ObservableObject {
    
    @Published var cards: [OfferViewModel] = []
    
    func fetchOffers() async {
        do {
            let offersData = try await NetworkManager.shared.fetchData(Offers.self, from: API.offers.rawValue)
            cards = offersData.offers.map { OfferViewModel(offer: $0) }
        } catch {
            print(error)
        }
    }
}
