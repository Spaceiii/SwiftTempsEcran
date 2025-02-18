//
//  ContentView.swift
//  SwiftTempsEcran
//
//  Created by meyer timothee on 11/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // TODO: change app name
        Text("Nom Appli")
        TabView {
            Text("test")
                .tabItem {
                    Image(systemName: "timer")
                    Text("Mes temps d'écran")
                }
            Text("Test 2")
                .tabItem {
                    Image(systemName: "xmark.circle")
                    Text("Apps Exclues")
                }
            Text("Testeu")
                .tabItem {
                    Image(systemName: "moon.stars")
                    Text("Sommeil")
                }
        }
    }
}

#Preview {
    ContentView()
}
