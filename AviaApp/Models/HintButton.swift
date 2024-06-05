//
//  HintButton.swift
//  AviaApp
//
//  Created by Антон Пеньков on 04.06.2024.
//

struct HintButton {
    let title: String
    let imageName: String
    let color: String
}

extension HintButton {
    static func getButtons() -> [HintButton] {
        [
            HintButton(title: "Сложный маршрут", imageName: "routeIcon", color: "specialGreen"),
            HintButton(title: "Куда угодно", imageName: "globeIcon", color: "lightBlue"),
            HintButton(title: "Выходные", imageName: "calendarIcon", color: "darkBlue"),
            HintButton(title: "Горячие билеты", imageName: "fireIcon", color: "neonRed")
        ]
    }
}
