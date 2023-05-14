//
//  Model.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 03.02.2023.
//

import SwiftUI

struct Item: Identifiable, Hashable {
    let id: String = UUID().uuidString
    var index: Int
    let name: String
    let description: String
    let color: Color
}

var testItems = [
    Item(index: 1, name: "Leonardo Vitony", description: "Leo Vi", color: .purple),
    Item(index: 2, name: "Danylo Ternovoi", description: "Dan Te", color: .blue),
    Item(index: 3, name: "Elon Mask", description: "Tesla", color: .green)
]
