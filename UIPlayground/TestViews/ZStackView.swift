//
//  ZStackView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 02.03.2023.
//

import SwiftUI

struct ZStackView: View {
    @State var text: String = ""
    @State var toggle: Bool = false
    @FocusState var focusedText: FocusedText?
    
    
    enum FocusedText {
        case text
    }
    
    var body: some View {
        VStack {
            Spacer()
            TextField("Text", text: $text)
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                .focused($focusedText, equals: .text)
            Spacer()
            Toggle("Toggle", isOn: $toggle)
                .padding(.vertical)
        }
        .padding(.horizontal)
        .background(Color.green)
        .ignoresSafeArea(.keyboard)
        .onTapGesture {
            focusedText = .none
        }
    }
}

struct ZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
    }
}
