//
//  AppStorageTestView.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 10.02.2023.
//

import SwiftUI

struct AppStorageTestView: View {
    @AppStorage("askBeforeDelete") var askBeforeDelete: Bool = true
    
    var body: some View {
        VStack {
            Toggle("Ask before delete", isOn: $askBeforeDelete)
            AppStorageSecondTestView()
        }
        .padding()
    }
}

struct AppStorageSecondTestView: View {
    @AppStorage("askBeforeDelete") var askBeforeDelete: Bool = true

    var body: some View {
        VStack {
            Toggle("Ask to delete", isOn: $askBeforeDelete)
        }
    }
}

struct AppStorageTestView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageTestView()
    }
}
