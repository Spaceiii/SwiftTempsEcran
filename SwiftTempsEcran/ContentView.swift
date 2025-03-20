//
//  ContentView.swift
//  SwiftTempsEcran
//
//  Created by meyer timothee on 11/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
            VStack {
                Image(systemName: "moon.zzz.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                Text("Cette partie est en cours de construction")
            }
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
