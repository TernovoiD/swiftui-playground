//
//  NavigationMainView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 01.02.2023.
//

import SwiftUI

struct NavigationMainView: View {
    @State var hasScrolled: Bool = false
    var body: some View {
        ScrollView {
            GeometryReader { proxy in
                Color.clear.preference(key: ScrollPreferenceKey.self, value: proxy.frame(in: .named("scroll")).minY)
            }
            ForEach(0 ..< 10) { item in
                plate
                    .shadow(color: .black, radius: 3, y: 3)
            }
        }
        .coordinateSpace(name: "scroll")
        .onPreferenceChange(ScrollPreferenceKey.self, perform: { value in
            withAnimation(.easeInOut) {
                hasScrolled = value < 0 ? true : false
            }
        })
        .safeAreaInset(edge: .top, content: { Color.clear.frame(height: 70) })
        .safeAreaInset(edge: .bottom, content: { Color.clear.frame(height: 50) })
        .overlay(NavigationBarView(title: "Main View", hasScrolled: $hasScrolled))
    }
    
    var plate: some View {
        LinearGradient(colors: [.red, .orange], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(height: 120)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            .padding(.horizontal)
            .padding(.vertical, 5)
    }
}

struct NavigationMainView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationMainView()
    }
}
