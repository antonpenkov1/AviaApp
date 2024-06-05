//
//  HintButtonsScrollViewModel.swift
//  AviaApp
//
//  Created by Антон Пеньков on 04.06.2024.
//

import Foundation

class HintButtonsScrollViewModel {
    var hintButtons: [HintButton] {
        HintButton.getButtons()
    }
}
