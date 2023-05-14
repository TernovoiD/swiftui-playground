//
//  AndOrTestView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 16.02.2023.
//

import SwiftUI

struct AndOrTestView: View {
    @State var regEventNotification = false
    @State var favEventNotification = true
    @State var regular = true
    @State var favorite = false
    
    var body: some View {
        ZStack {
            if regEventNotification && regular || favorite && favEventNotification {
                Color.blue.opacity(0.5).ignoresSafeArea()
            }
            buttons
        }
    }
    
    var buttons: some View {
        VStack(spacing: 15) {
            Button {
                regEventNotification.toggle()
            } label: {
                Text("regEventNotification")
                    .padding()
                    .foregroundColor(.white)
                    .background(regEventNotification ? Color.green : Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            }
            Button {
                favEventNotification.toggle()
            } label: {
                Text("favEventNotification")
                    .padding()
                    .foregroundColor(.white)
                    .background(favEventNotification ? Color.green : Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            }
            Button {
                regular.toggle()
            } label: {
                Text("regular")
                    .padding()
                    .foregroundColor(.white)
                    .background(regular ? Color.green : Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            }
            Button {
                favorite.toggle()
            } label: {
                Text("favorite")
                    .padding()
                    .foregroundColor(.white)
                    .background(favorite ? Color.green : Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            }
        }
    }
}

struct AndOrTestView_Previews: PreviewProvider {
    static var previews: some View {
        AndOrTestView()
    }
}
