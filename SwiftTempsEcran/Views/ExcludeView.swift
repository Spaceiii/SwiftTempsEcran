//
//  ExcludeView.swift
//  SwiftTempsEcran
//
//  Created by meyer timothee on 11/03/2025.
//

import SwiftUI

struct ExcludeView: View {
    @EnvironmentObject var appVM: AppViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(appVM.getExcludeApps()) { app in
                    NavigationLink(destination: DetailsView(app: app)) {
                        RowView(app: app)
                    }
                }
            }
        }
    }
}

#Preview {
    ExcludeView()
        .environmentObject(AppViewModel())
}
