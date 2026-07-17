//
//  ConfirmationDialog.swift
//  PaulHudsonAgain
//
//  Created by RASHID on 17/07/2026.
//

import SwiftUI

struct ConfirmationDialog: View {
    @State private var showingConformation = false
    @State private var backroundColor = Color.white
    var body: some View {
        Button("HELLO WORLD")  {
            showingConformation.toggle()
        }
        .frame(width: 300,height: 300)
        .background(backroundColor)
        .confirmationDialog("Change Backround", isPresented: $showingConformation) {
            Button("Red") {
                backroundColor = .red
            }
            Button("Green") {
                backroundColor = .green
            }
            Button("Blue") {
                backroundColor = .blue
            }
            Button("Cancel" , role: .cancel) {}
          
        } message: {
             Text("Select a New Color.")
        }
    }
}

#Preview {
    ConfirmationDialog()
}
