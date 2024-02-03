//
//  ContentView.swift
//  TEAM1MC3
//
//  Created by suha alrajhi on 11/07/1445 AH.
//
import SwiftUI
import SwiftSVG

struct MapView: View {
    @State private var imageSize: CGSize = .zero

    var body: some View {
        GeometryReader { proxy in
            Image("world5")
                .resizable()
                .scaledToFit()
                .frame(width: proxy.size.width, height: proxy.size.height)
                .onAppear {
                    // Update imageSize when the image appears on the screen
                    self.imageSize = CGSize(width: proxy.size.width, height: proxy.size.height)
                }
                .clipShape(Rectangle())
                .modifier(ImageModifier(contentSize: imageSize))
        }
    }
}
#Preview {
    MapView()
}
