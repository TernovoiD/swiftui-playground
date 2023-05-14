//
//  ImageSelector.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 27.03.2023.
//

import SwiftUI
import PhotosUI

struct ImageSelector: View {
    @State private var selectedImage: PhotosPickerItem?
    @State private var selectedImageData: Data?
    
    var body: some View {
        VStack {
            if let selectedImageData,
               let uiImage = UIImage(data: selectedImageData) {
                Image(uiImage: uiImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            PhotosPicker(selection: $selectedImage, photoLibrary: .shared()) {
                Text("Select photo")
            }
            .onChange(of: selectedImage) { newItem in
                Task {
                    if let data = try? await newItem?.loadTransferable(type: Data.self) {
                        selectedImageData = data
                    }
                }
        }
        }
    }
}

struct ImageSelector_Previews: PreviewProvider {
    static var previews: some View {
        ImageSelector()
    }
}
