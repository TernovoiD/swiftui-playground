//
//  HorizontalTabView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 01.02.2023.
//

import SwiftUI

struct HorizontalTabView: View {
    var body: some View {
        ScrollView {
            TabView {
                ForEach(0 ..< 5) { item in
                    GeometryReader { proxy in
                        plate
                            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                            .rotation3DEffect(.degrees(proxy.frame(in: .global).minX / -10), axis: (x: 0, y: 1, z: 0))
                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 20)
                            .blur(radius: abs(proxy.frame(in: .global).minX) / 50)
                            .overlay(
                            Image(systemName: "person.3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundStyle(LinearGradient(colors: [.orange, .white], startPoint: .leading, endPoint: .trailing))
                                .offset(x: 60, y: -80)
                                .frame(width: 250)
                                .offset(x: proxy.frame(in: .global).minX)
                            )
                            .padding(20)
                    }
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .frame(height: 315)
//            .background(Color.white)
            Text("This text is here to show where new frame starts.")
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
        }
        .background(
            LinearGradient(colors: [.indigo, .pink], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
    
    var plate: some View {
        VStack(alignment: .leading, spacing: 8) {
            Spacer()
            Text("Test Plate")
                .font(.title.weight(.medium))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("This plate will help me to test horizontal geometry reader")
                .font(.footnote.weight(.medium))
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal)
        .padding(.vertical, 40)
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .foregroundStyle(
            LinearGradient(colors: [.white, .white.opacity(0.7)], startPoint: .leading, endPoint: .trailing)
        )
        .background(.ultraThinMaterial)
    }
}

struct HorizontalTabView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalTabView()
    }
}
