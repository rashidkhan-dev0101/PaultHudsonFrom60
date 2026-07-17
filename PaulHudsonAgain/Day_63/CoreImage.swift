//
//  CoreImage.swift
//  PaulHudsonAgain
//
//  Created by RASHID on 17/07/2026.
//

import SwiftUI

struct CoreImage: View {
    @State private var image: Image?
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
        }
        .onAppear(perform: loadImage)
    }
    func loadImage() {
        image = Image(.rashid)
    }
}

#Preview {
    CoreImage()
}
