//
//  ContentView.swift
//  TEAM1MC3
//
//  Created by suha alrajhi on 11/07/1445 AH.
//

import SwiftUI
import InteractiveMap

struct MapView: View {
    @State private var zoomScale: CGFloat = 1.0
    @State private var currentScale: CGFloat = 1.0
    @State private var translation: CGSize = .zero
    @State private var clickedPath = PathData()

    var body: some View {
        
            VStack {
                Text(clickedPath.name.isEmpty ? "" : "\(clickedPath.name) is clicked!")
                    .font(.largeTitle)
                ScrollView([.horizontal, .vertical]) {
                ZoomableMapView(
                    zoomScale: $zoomScale,
                    currentScale: $currentScale,
                    translation: $translation,
                    clickedPath: $clickedPath
                )
                .padding(.top, 100)
            }
        }
    }
}

struct ZoomableMapView: View {
    @Binding var zoomScale: CGFloat
    @Binding var currentScale: CGFloat
    @Binding var translation: CGSize
    @Binding var clickedPath: PathData

    var body: some View {
        ZStack {
            Image("world7Final")
                .resizable()
                .scaledToFit()
            

            InteractiveMap(svgName: "") { pathData in
                InteractiveShape(pathData)
                    .initWithAttributes(
                        .init(
                            strokeWidth: 0.5,
                            strokeColor: .white,
                            background: Color(
                                red: Double(0xC2) / 255.0,
                                green: Double(0x99) / 255.0,
                                blue: Double(0xF6) / 255.0,
                                opacity: 1.0
                            )
                        )
                    )
                    .onTapGesture {
                        clickedPath = pathData
                    }
                    .scaleEffect(clickedPath == pathData ? 1.4 : 1)
                    .animation(.easeInOut(duration: 0.2), value: clickedPath)
                    .zIndex(clickedPath == pathData ? 2 : 1)
            }
            .offset(translation)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        zoomScale = value
                    }
                    .onEnded { _ in
                        currentScale *= zoomScale
                        zoomScale = 0.2
                    }
            )
            .animation(.easeInOut(duration: 0.2))
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
