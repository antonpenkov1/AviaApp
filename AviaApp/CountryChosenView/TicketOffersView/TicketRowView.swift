//
//  TicketRowView.swift
//  AviaApp
//
//  Created by Антон Пеньков on 05.06.2024.
//

import SwiftUI

struct TicketRowView: View {
    
    let viewModel: TicketRowViewModel
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Circle()
                .frame(width: 25)
                .foregroundColor(.red)
                .padding(.top, 5)
                .padding(.leading, 5)
            VStack(alignment: .leading) {
                HStack {
                    Text(viewModel.companyName)
                        .italic()
                        .bold()
                        .foregroundStyle(.offWhite)
                    Spacer()
                    Text(viewModel.price)
                        .foregroundStyle(.lightBlue)
                }
                Text(viewModel.timeRange)
                    .foregroundStyle(.offWhite)
            }
            .font(.system(size: 14))
            .padding(5)
        }
        .background(.grey2)
        .padding()
    }
}

#Preview {
    TicketRowView(
        viewModel: TicketRowViewModel(ticketOffer: TicketsOffer.getTicketOffer())
    )
}
