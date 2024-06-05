//
//  CountryChosenTextFieldView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 04.06.2024.
//

import SwiftUI

struct CountryChosenBoxView: View {
    @StateObject private var viewModel = SearchBoxViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 16, height: 16))
                .foregroundColor(.grey4)
                .frame(height: 100)
            
            HStack {
                Image(systemName: "arrow.left")
                    .bold()
                    .foregroundStyle(.grey7)
                VStack {
                    TextFieldView(
                        placeHolder: "Откуда - Москва",
                        buttonImageName: "arrow.up.arrow.down",
                        action: viewModel.switchCities,
                        locationText: $viewModel.locationFrom
                    )

                    Rectangle()
                        .foregroundColor(.grey6.opacity(0.6))
                        .frame(height: 2)
                    TextFieldView(
                        placeHolder: "Куда - Турция",
                        buttonImageName: "xmark",
                        action: viewModel.clearLocationTo,
                        locationText: $viewModel.locationTo
                    )
                }
            }
            .padding(.horizontal, 16)
        }
        .padding()
        .padding(.top, 30)
    }
}

#Preview {
    CountryChosenBoxView()
}
