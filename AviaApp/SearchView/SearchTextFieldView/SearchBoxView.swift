//
//  SearchBoxView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

import SwiftUI

struct SearchBoxView: View {
    @StateObject private var viewModel = SearchBoxViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 16, height: 16))
                .foregroundColor(.grey4)
                .frame(height: 100)
            
            VStack {
                HStack {
                    Image(.planeIcon)
                        .foregroundStyle(.grey6)
                    TextFieldView(
                        placeHolder: "Откуда - Москва",
                        buttonImageName: "xmark",
                        action: viewModel.clearLocationFrom,
                        locationText: $viewModel.locationFrom
                    )
                }
                Rectangle()
                    .foregroundColor(.grey6.opacity(0.6))
                    .frame(height: 2)
                HStack {
                    Image(.searchIcon)
                        .foregroundStyle(.grey6)
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
    SearchBoxView()
}

