//
//  CitiesListViewModel.swift
//  AviaApp
//
//  Created by Антон Пеньков on 04.06.2024.
//

import Foundation

class CitiesListViewModel {
    var cityRows: [City] {
        City.getCities()
    }
}
