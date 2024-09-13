//
//  SaveButton.swift
//  PhotoSaver
//
//  Created by Mark DiFranco on 2024-05-08.
//

import SwiftUI

struct SaveButton: View {
    @Binding var isSaved: Bool

    var body: some View {
        Button(action: {
            withAnimation{
                isSaved.toggle()
            }
        }, label: {
            Image(systemName: isSaved ? "star.fill" : "star")
                .imageScale(.large)
            // Add animation effects here using isSaved
                .scaleEffect(isSaved ? 1.5 : 1.0)
                .rotationEffect(isSaved ? .degrees(360) : .degrees(0))
        })
        // Specify an animation to use
        .foregroundStyle(isSaved ? .orange : .secondary)
        .animation(.bouncy(duration: 1.0), value: isSaved)
    }
}

private struct PreviewView: View {
    @State private var isSaved = false

    var body: some View {
        SaveButton(isSaved: $isSaved)
    }
}

#Preview {
    PreviewView()
}
