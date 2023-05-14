//
//  MatchedDetailView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 01.02.2023.
//

import SwiftUI

struct MatchedDetailView: View {
    var namespace: Namespace.ID
    @Binding var item: Item
    @Binding var showDetailView: Bool
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Spacer()
                Text(item.name)
                    .matchedGeometryEffect(id: "title\(item.id)", in: namespace)
                Text(item.description)
                    .matchedGeometryEffect(id: "description\(item.id)", in: namespace)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: 300)
            .foregroundColor(.white)
            .background(item.color.matchedGeometryEffect(id: "background\(item.id)", in: namespace))
            .mask(
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .matchedGeometryEffect(id: "mask\(item.id)", in: namespace)
            )
            .ignoresSafeArea()
            .shadow(color: .black, radius: 3, y: 3)
            .onTapGesture {
                withAnimation(.easeInOut) {
                    showDetailView = false
                }
        }
            Spacer()
            Text("ghjkjghhg")
        }
        .background(Color.white)
    }
}

struct MatchedDetailView_Previews: PreviewProvider {
    @Namespace static var namespace

    static var previews: some View {
        MatchedDetailView(namespace: namespace, item: .constant(testItems[0]), showDetailView: .constant(true))
    }
}
