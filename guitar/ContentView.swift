//
//  ContentView.swift
//  guitar
//
//  Created by Vitali Klopau on 06.08.2023.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some ARView {
        let arView = ARView(frame: .zero)
        
        let guitarAnchor = try! Experience.loadGuitar()
        
        arView.scene.anchors.append(guitarAnchor)
        
        return arView
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
