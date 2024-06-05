//
//  TextFieldView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 04.06.2024.
//

import SwiftUI

struct TextFieldView: View {
    
    let placeHolder: String
    let buttonImageName: String
    let action: () -> Void
    @Binding var locationText: String
    
    var body: some View {
        TextField("", text: $locationText, prompt: Text(placeHolder).foregroundStyle(.grey7))
            .foregroundStyle(.white)
            .overlay(
                Button(action: action) {
                    Image(systemName: buttonImageName)
                        .foregroundStyle(.grey7)
                }
                    .padding(),
                alignment: .trailing
            )
    }
}


#Preview {
    TextFieldView(
        placeHolder: "Откуда - Москва",
        buttonImageName: "xmark",
        action: {},
        locationText: .constant("")
    )
}
