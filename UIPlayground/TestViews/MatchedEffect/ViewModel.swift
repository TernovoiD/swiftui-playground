//
//  ViewModel.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 03.02.2023.
//

import Foundation

class Model: ObservableObject {
    @Published var selectedItem: Int = 0
    @Published var showDetailedView: Bool = false
}


