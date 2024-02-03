//
//  Usage.swift
//  TEAM1MC3
//
//  Created by suha alrajhi on 16/07/1445 AH.
//

import SwiftUI
import SwiftUIImageViewer

struct ContentView: View {

    @State private var isImagePresented = false

    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            .frame(width: 260, height: 260)
            .onTapGesture {
                isImagePresented = true
            }
            .fullScreenCover(isPresented: $isImagePresented) {
                SwiftUIImageViewer(image: image)
                    .overlay(alignment: .topTrailing) {
                        closeButton
                    }
            }
    }

    private var image: Image {
        Image("world5")
    }

    private var closeButton: some View {
        Button {
            isImagePresented = false
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
        .buttonStyle(.bordered)
        .clipShape(Circle())
        .tint(.purple)
        .padding()
    }
}

#Preview {
    Usage()
}
