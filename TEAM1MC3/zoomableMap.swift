//
//  zoomableMap.swift
//  TEAM1MC3
//
//  Created by suha alrajhi on 18/07/1445 AH.
//

import SwiftUI
import SwiftUIImageViewer

struct zoomableMap: View {
    @State private var scale: CGFloat = 1.0
    @State private var currentScale: CGFloat = 1.0
    @State private var isZooming = false
    @State private var offset: CGSize = .zero
    @State private var newPosition: CGSize = .zero

    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            .frame(width: 260 * scale, height: 260 * scale)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        if !isZooming {
                            isZooming = true
                            currentScale = scale
                        }
                        scale = currentScale * value
                    }
                    .onEnded { _ in
                        isZooming = false
                    }
            )
            .gesture(
                DragGesture()
                    .onChanged { value in
                        offset = CGSize(width: value.translation.width + newPosition.width, height: value.translation.height + newPosition.height)
                    }
                    .onEnded { value in
                        newPosition = offset
                    }
            )
    }

    private var image: Image {
        Image("world7Final")
    }
}

#Preview {
    zoomableMap()
}
