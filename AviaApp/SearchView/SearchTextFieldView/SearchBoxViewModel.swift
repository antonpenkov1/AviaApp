//
//  SearchBoxViewModel.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

import Foundation

class SearchBoxViewModel: ObservableObject {
    @Published var locationFrom: String = ""
    @Published var locationTo: String = ""
    
    func clearLocationFrom() {
        locationFrom = ""
    }
    
    func clearLocationTo() {
        locationTo = ""
    }
    
    func switchCities() {
        let value = locationFrom
        locationFrom = locationTo
        locationTo = value
    }
}
