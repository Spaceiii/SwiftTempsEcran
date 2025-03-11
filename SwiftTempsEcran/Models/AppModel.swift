//
//  AppModel.swift
//  SwiftTempsEcran
//
//  Created by meyer timothee on 11/03/2025.
//

import Foundation

enum Category: String, CaseIterable {
    case sport = "Sport"
    case divertissement = "Divertissement"
    case essentiel = "Essentiel"
    case rs = "Réseaux Sociaux"
    case divers = "Divers"
    case musique = "Musique"
}

struct AppModel: Identifiable {
    let id: UUID = UUID()
    var name: String
    var icon: String
    var useTime: Double
    var maxTime: Double
    var category: Category
    var exclude: Bool = false
    
    static var testApps = [
        AppModel(name: "Spotify", icon: "spotify", useTime: 1.2, maxTime: 5, category: .musique),
        AppModel(name: "Youtube", icon: "youtube", useTime: 3.5, maxTime: 5, category: .divertissement),
        AppModel(name: "Banque", icon: "bank", useTime: 0.2, maxTime: 10, category: .essentiel),
        AppModel(name: "Tiktok", icon: "tiktok", useTime: 10, maxTime: 10, category: .rs, exclude: true),
        
    ]
}
