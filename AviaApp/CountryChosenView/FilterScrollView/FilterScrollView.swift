//
//  FilterScrollView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 04.06.2024.
//

import SwiftUI

struct FilterScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                FilterButtonView(imageName: "plus", title: "обратно")
                DateButtonView(title: "24 фев", subtitle: ", сб")
                FilterButtonView(imageName: "person.fill", title: "1,эконом")
                FilterButtonView(imageName: "filterIcon", title: "фильтры")
            }
            .frame(height: 30)
            .padding()
        }
    }
}

#Preview {
    FilterScrollView()
}
