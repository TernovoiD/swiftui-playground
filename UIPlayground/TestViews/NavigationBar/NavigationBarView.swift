//
//  NavigationBarView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 01.02.2023.
//

import SwiftUI

struct NavigationBarView: View {
    var title: String = "Navigation Bar"
    @Binding var hasScrolled: Bool
    
    var body: some View {
        ZStack {
            Color.clear
                .ignoresSafeArea()
                .background(.ultraThinMaterial)
                .blur(radius: 8)
            
                Text(title)
                .font(hasScrolled ? .title3.bold() : .largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .padding(.top, 20)
                    .offset(y: hasScrolled ? -5 : 0)
                Spacer()
                Image(systemName: "magnifyingglass")
                    .bold()
                    .padding(10)
                    .foregroundColor(.secondary)
                    .background(.white.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()
                    .padding(.top, 20)
                    .offset(y: hasScrolled ? -5 : 0)
        }
        .frame(height: hasScrolled ? 44 : 70)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView(hasScrolled: .constant(false))
    }
}
