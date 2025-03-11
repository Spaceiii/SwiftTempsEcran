//
//  HomeView.swift
//  SwiftTempsEcran
//
//  Created by meyer timothee on 11/03/2025.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var appVM: AppViewModel
    
    var body: some View {
        List {
            ForEach(appVM.getActiveApps()) { app in
                RowView(app: app)
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(AppViewModel())
}
