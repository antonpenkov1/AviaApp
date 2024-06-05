//
//  SearchView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

import SwiftUI

struct SearchView: View {    
    var body: some View {
        NavigationStack {
            VStack {
                SearchBoxView()
                HintButtonsScrollView()
                CitiesListView()
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 16, height: 16)))
                Spacer()
            }
            .containerRelativeFrame([.horizontal, .vertical])
            .background(.grey2)
        }
    }
}

#Preview {
    SearchView()
}
