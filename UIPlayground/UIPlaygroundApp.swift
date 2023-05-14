//
//  UIPlaygroundApp.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 29.01.2023.
//

import SwiftUI

@main
struct UIPlaygroundApp: App {
    @StateObject var model: Model = Model()
    @StateObject var selectedScrollVM: SelectedScrollViewModel = SelectedScrollViewModel()
    var body: some Scene {
        WindowGroup {
            TagTransitionsView()
        }
    }
}
