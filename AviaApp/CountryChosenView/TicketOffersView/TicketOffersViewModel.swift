//
//  TicketOffersViewModel.swift
//  AviaApp
//
//  Created by Антон Пеньков on 05.06.2024.
//

import SwiftUI

@MainActor class TicketOffersViewModel: ObservableObject {

    @Published var rows: [TicketRowViewModel] = []

    func fetchOffers() async {
        do {
            let offersData = try await NetworkManager.shared.fetchData(TicketsOffers.self, from: API.ticketOffers.rawValue)
            rows = offersData.ticketsOffers.map { TicketRowViewModel(ticketOffer: $0) }
        } catch {
            print(error)
        }
    }
}
