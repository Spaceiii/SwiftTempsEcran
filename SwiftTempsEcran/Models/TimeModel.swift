//
//  TimeModel.swift
//  SwiftTempsEcran
//
//  Created by meyer timothee on 18/02/2025.
//

import Foundation

enum Category: String, CaseIterable {
    case rs = "Réseaux Sociaux"
    case sport = "Sports"
}

struct TimeModel: Identifiable {
    let id: UUID = UUID()
    
}
