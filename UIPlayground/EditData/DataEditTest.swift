//
//  DataEditTest.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 01.03.2023.
//

import SwiftUI

struct DataEditTest: View {
    @State var data: DataModel
    
    var body: some View {
        VStack {
            Text(data.name)
            TextField("Name", text: $data.name)
                .padding()
                .opacity(0.2)
        }
    }
}

struct DataEditTest_Previews: PreviewProvider {
    static var previews: some View {
        DataEditTest(data: DataModel.testData[0])
    }
}
