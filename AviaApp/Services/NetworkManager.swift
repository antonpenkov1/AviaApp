//
//  NetworkManager.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case decodingError
}

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
//    func fetchOffers() async throws -> [Offer] {
//        guard let url = URL(string: API.offers.rawValue) else {
//            throw NetworkError.invalidURL
//        }
//        let (data, _) = try await URLSession.shared.data(from: url)
//        guard let offersData = try? JSONDecoder().decode(Offers.self, from: data)
//        else {
//            throw NetworkError.decodingError
//        }
//        let offers = offersData.offers.map { $0 }
//        return offers
//    }
//    
//    func fetchTicketOffers() async throws -> [TicketsOffer] {
//        guard let url = URL(string: API.offers.rawValue) else {
//            throw NetworkError.invalidURL
//        }
//        let (data, _) = try await URLSession.shared.data(from: url)
//        guard let offersData = try? JSONDecoder().decode(TicketsOffers.self, from: data)
//        else {
//            throw NetworkError.decodingError
//        }
//        let offers = offersData.ticketsOffers.map { $0 }
//        return offers
//    }
    
    func fetchData<T: Decodable>(_ type: T.Type, from api: String) async throws -> T {
        guard let url = URL(string: api) else {
            throw NetworkError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        guard let offers = try? JSONDecoder().decode(T.self, from: data)
        else {
            throw NetworkError.decodingError
        }
        return offers
    }
}

enum API: String {
    case offers = "https://run.mocky.io/v3/214a1713-bac0-4853-907c-a1dfc3cd05fd"
    case ticketOffers = "https://run.mocky.io/v3/7e55bf02-89ff-4847-9eb7-7d83ef884017"
}
