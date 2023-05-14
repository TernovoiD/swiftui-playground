//
//  PlateView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 03.02.2023.
//

import SwiftUI

struct PlateView: View {
    var namespace: Namespace.ID
    let item: Item
    @Binding var showDetailView: Bool
    @Binding var selectedItem: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.name)
                .matchedGeometryEffect(id: "title\(item.id)", in: namespace)
            Text(item.description)
                .matchedGeometryEffect(id: "description\(item.id)", in: namespace)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(.white)
        .background(item.color.matchedGeometryEffect(id: "background\(item.id)", in: namespace))
        .mask(
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .matchedGeometryEffect(id: "mask\(item.id)", in: namespace)
        )
        .onTapGesture {
            withAnimation(.easeInOut) {
                selectedItem = item.index
                showDetailView = true
            }
        }
    }
}

struct PlateView_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        PlateView(namespace: namespace, item: testItems[0], showDetailView: .constant(false), selectedItem: .constant(0))
    }
}
