//
//  CitiesListView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 04.06.2024.
//

import SwiftUI

struct CitiesListView: View {
    
    private let viewModel = CitiesListViewModel()
    
    var body: some View {
//        NavigationStack {
            VStack {
                ForEach(viewModel.cityRows, id: \.title) { cityRow in
                    NavigationLink(destination: EmptyView(title: cityRow.title)) {
                        CityRowView(city: cityRow)
                    }
                }
            }
            .background(.grey4)
//        }
    }
}

#Preview {
    CitiesListView()
}
