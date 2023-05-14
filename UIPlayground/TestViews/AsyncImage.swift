//
//  AsyncImage.swift
//  UIPlayground
//
//  Created by Danylo Ternovoi on 29.03.2023.
//

import SwiftUI

struct AsyncImageView: View {
    let imageURL: String = "https://cdn.britannica.com/79/4679-050-BC127236/Titanic.jpg"
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { image in
            image
                .resizable()
                .aspectRatio(1, contentMode: .fit)
        } placeholder: {
            ProgressView()
        }

    }
}

struct AsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView()
    }
}
