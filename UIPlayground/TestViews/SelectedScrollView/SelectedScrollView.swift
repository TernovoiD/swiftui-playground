//
//  SelectedScrollView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 05.02.2023.
//

import SwiftUI

struct SelectedScrollView: View {
    @EnvironmentObject var viewModel: SelectedScrollViewModel
    var body: some View {
        ScrollView {
            ForEach(testItems) { item in
                SelectedScrollPanelView(item: item)
            }
        }
        .safeAreaInset(edge: .top) {
            Color.clear
                .frame(height: 100)
        }
    }
}

struct SelectedScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedScrollView()
            .environmentObject(SelectedScrollViewModel())
    }
}
