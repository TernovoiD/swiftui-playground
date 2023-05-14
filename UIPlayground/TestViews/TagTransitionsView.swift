//
//  TagTransitionsView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 29.01.2023.
//

import SwiftUI

struct TagTransitionsView: View {
    
    @Namespace var namespace
    @State var makeChanges: Bool = false
    @State var makeChanges2: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                if makeChanges {
                    tagOne
                        .matchedGeometryEffect(id: "tagOne", in: namespace)
                }
                if makeChanges2 {
                    tagTwo
                        .matchedGeometryEffect(id: "tagTwo", in: namespace)
                }
            }
            Spacer()
            HStack {
                if !makeChanges {
                    tagOne
                        .matchedGeometryEffect(id: "tagOne", in: namespace)
                }
                if !makeChanges2 {
                    tagTwo
                        .matchedGeometryEffect(id: "tagTwo", in: namespace)
                }
            }
        }
    }
    
    var tagOne: some View {
        Text("TagOne")
            .padding()
            .foregroundColor(.white)
            .background {
                Color.mint
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .onTapGesture {
                change()
            }
    }
    var tagTwo: some View {
        Text("TagTwo")
            .padding()
            .foregroundColor(.white)
            .background {
                Color.orange
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .onTapGesture {
                change2()
            }
    }
    
    func change() {
        withAnimation(.easeInOut) {
            makeChanges.toggle()
        }
    }
    func change2() {
        withAnimation(.easeInOut) {
            makeChanges2.toggle()
        }
    }
}

struct TagTransitionsView_Previews: PreviewProvider {
    static var previews: some View {
        TagTransitionsView()
    }
}
