//
//  City.swift
//  AviaApp
//
//  Created by Антон Пеньков on 04.06.2024.
//

struct City {
    let title: String
    let subtitle: String
    let imageName: String
}

extension City {
    static func getCities() -> [City] {
        [
            City(title: "Стамбул", subtitle: "Популярное направление", imageName: "istanbul"),
            City(title: "Сочи", subtitle: "Популярное направление", imageName: "sochi"),
            City(title: "Пхукет", subtitle: "Популярное направление", imageName: "phuket")
        ]
    }
}
