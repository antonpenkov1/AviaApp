//
//  PlaneTicketsView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

import SwiftUI

struct PlaneTicketsView: View {
    @State private var showSearchView: Bool = false
    @StateObject private var viewModel = PlaneTicketsViewModel()
    
    var body: some View {
        NavigationStack {
            VStack() {
                TitleView(title: "Поиск дешевых авиабилетов")
                    .frame(width: 300)
                Button(action: showView) {
                    SearchRectangleView()
                }
                HStack {
                    TitleView(title: "Музыкально отлететь")
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 20) {
                        ForEach(viewModel.cards, id: \.id) { offerViewModel in
                            OfferView(viewModel: offerViewModel)
                        }
                    }
                    .padding()
                    .padding(.bottom, 10)
                }
                .frame(height: 210)
                .task {
                    await viewModel.fetchOffers()
                }
                Spacer()
            }
            .containerRelativeFrame([.horizontal, .vertical])
        .background(.offBlack)
        }
        .sheet(isPresented: $showSearchView) {
            SearchView()
        }
    }
    
    private func showView() {
        showSearchView.toggle()
    }
}

#Preview {
    PlaneTicketsView()
}
