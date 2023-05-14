//
//  DataModel.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 01.03.2023.
//

import Foundation

struct DataModel {
    var name: String
    var info: String
}

extension DataModel {
    static let testData = [
    DataModel(name: "TestName1", info: "TestInfo1"),
    DataModel(name: "TestName2", info: "TestInfo2")
    ]
}
