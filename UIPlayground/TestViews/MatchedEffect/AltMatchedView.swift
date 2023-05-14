//
//  AltMatchedView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 03.02.2023.
//

import SwiftUI

struct AltMatchedView: View {
    var columns = [GridItem(.adaptive(minimum: 300), spacing: 20)]
    @Namespace var namespace
    @State var showDetailView: Bool = false
    @State var selectedItem: Int = 0
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            
            ScrollView {
                
                if showDetailView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(testItems) { item in
                            Rectangle()
                                .fill(.white)
                                .frame(height: 70)
                                .cornerRadius(30)
                                .shadow(color: Color("Shadow").opacity(0.2), radius: 20, x: 0, y: 10)
                                .opacity(0)
                        }
                    }
                    .padding(.horizontal, 20)
                } else {
                    LazyVGrid(columns: columns, spacing: 20) {
                        course
                    }
                    .padding(.horizontal, 20)
                }
            }
            
            if showDetailView {
                VStack {
                    detail
                }
                .zIndex(1)
            }
            
            
        }
    }
    
    var detail: some View {
        ForEach(testItems) { item in
            if item.index == selectedItem {
                MatchedDetailView(namespace: namespace, item: .constant(item), showDetailView: $showDetailView)
            }
        }
    }
    
    var course: some View {
        ForEach(testItems) { item in
            PlateView(namespace: namespace, item: item, showDetailView: $showDetailView, selectedItem: $selectedItem)
                .shadow(color: .black, radius: 3, y: 3)
        }
    }
    
    
}

struct AltMatchedView_Previews: PreviewProvider {
    static var previews: some View {
        AltMatchedView()
    }
}
