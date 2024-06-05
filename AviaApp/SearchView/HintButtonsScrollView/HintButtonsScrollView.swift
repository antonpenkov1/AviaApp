//
//  HintButtonsScrollView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 04.06.2024.
//

import SwiftUI

struct HintButtonsScrollView: View {
    
    private let viewModel = HintButtonsScrollViewModel()
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .top, spacing: 20) {
                ForEach(viewModel.hintButtons, id: \.title) { hintButton in
                    HintButtonView(
                        title: hintButton.title,
                        imageName: hintButton.imageName,
                        color: Color(hintButton.color)
                    )
                }
            }
            .padding()
            .padding(.bottom, 10)
        }
        .frame(height: 140)
    }
}

#Preview {
    HintButtonsScrollView()
}
