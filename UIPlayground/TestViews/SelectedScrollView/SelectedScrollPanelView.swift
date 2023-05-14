//
//  SelectedScrollPanelView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 05.02.2023.
//

import SwiftUI

struct SelectedScrollPanelView: View {
    let item: Item
    @EnvironmentObject var viewModel: SelectedScrollViewModel
    var body: some View {
        VStack {
            HStack {
                Text(item.name)
                Spacer()
                Image(systemName: "chevron.down")
                    .rotationEffect(.degrees(viewModel.selectedItem == item ? 180 : 0))
            }
            if viewModel.selectedItem == item {
                VStack {
                    Text(item.description)
                    Text(item.description)
                    Text(item.description)
                    Text(item.description)
                    Text(item.description)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(
            LinearGradient(colors: [.red, .orange], startPoint: .leading, endPoint: .trailing)
        )
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .padding(.horizontal)
        .onTapGesture {
            withAnimation(.easeInOut) {
                viewModel.selectedItem = viewModel.selectedItem == item ? nil : item
            }
        }
    }
}

struct SelectedScrollPanelView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedScrollPanelView(item: testItems[0])
            .environmentObject(SelectedScrollViewModel())
    }
}
