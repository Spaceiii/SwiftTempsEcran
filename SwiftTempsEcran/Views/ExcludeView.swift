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
        List {
            ForEach(appVM.getExcludeApps()) { app in
                RowView(app: app)
            }
        }
    }
}

#Preview {
    ExcludeView()
        .environmentObject(AppViewModel())
}
