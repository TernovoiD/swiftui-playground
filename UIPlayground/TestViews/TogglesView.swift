//
//  TogglesView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 16.02.2023.
//

import SwiftUI

struct TogglesView: View {
    @State var first: Bool = false
    @State var second: Bool = false
    @State var backgroundColor = Color.yellow.opacity(0.5)
    
    var body: some View {
        VStack {
            Toggle("First", isOn: $first)
            Toggle("Second", isOn: $second)
            Spacer()
        }
        .padding()
        .padding(.top, 200)
        .background(backgroundColor)
        .ignoresSafeArea()
    }
    
    func changeBackground() {
        backgroundColor = Color.green.opacity(0.5)
    }
}

struct TogglesView_Previews: PreviewProvider {
    static var previews: some View {
        TogglesView()
    }
}
