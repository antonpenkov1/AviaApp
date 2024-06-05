//
//  EmptyView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 03.06.2024.
//

import SwiftUI

struct EmptyView: View {
    let title: String
    
    var body: some View {
        Text(title)
    }
}

#Preview {
    EmptyView(title: "Empty")
}
