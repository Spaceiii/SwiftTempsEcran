//
//  AppViewModel.swift
//  SwiftTempsEcran
//
//  Created by meyer timothee on 11/03/2025.
//

import Foundation

class AppViewModel: ObservableObject {
    @Published var apps: [AppModel] = []
    
    init() {
        getApps()
    }
    
    func getApps() {
        self.apps.append(contentsOf: AppModel.testApps)
    }
    
    func getActiveApps() -> [AppModel] {
        return self.apps.filter({ !$0.exclude })
    }
    
    func getExcludeApps() -> [AppModel] {
        return self.apps.filter({ $0.exclude })
    }
}
