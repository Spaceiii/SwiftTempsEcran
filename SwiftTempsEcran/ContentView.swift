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
        Text("Madness Guardian")
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "timer")
                    Text("Mes temps d'écran")
                }
            ExcludeView()
                .tabItem {
                    Image(systemName: "xmark.circle")
                    Text("Apps Exclues")
                }
            Text("TODO !")
                .tabItem {
                    Image(systemName: "moon.stars")
                    Text("Sommeil")
                }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AppViewModel())
}
