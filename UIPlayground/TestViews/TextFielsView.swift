//
//  TextFielsView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 26.02.2023.
//

import SwiftUI

struct TextFielsView: View {
    @State var text1: String = ""
    @State var text2: String = ""
    @FocusState var focusedText: FocusedText?
    
    enum FocusedText {
        case text1
        case text2
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text(focusedText == .none ? "nil" : "focused")
                TextField("text", text: $text1)
                    .padding()
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .padding()
                    .focused($focusedText, equals: .text1)
            Spacer()
        }
        .background(Color.cyan.opacity(0.3))
        .onTapGesture {
            focusedText = .none
        }
    }
}

struct TextFielsView_Previews: PreviewProvider {
    static var previews: some View {
        TextFielsView()
    }
}
