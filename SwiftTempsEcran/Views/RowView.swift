//
//  RowView.swift
//  SwiftTempsEcran
//
//  Created by meyer timothee on 11/03/2025.
//

import SwiftUI

struct RowView: View {
    var app: AppModel
    var formattedHourUsed = ""
    var formattedHourMax = ""

    init(app: AppModel) {
        self.app = app
        self.formattedHourUsed = String(format: "%.2f", app.useTime)
        self.formattedHourMax = String(format: "%.2f", app.maxTime)
    }
    
    var body: some View {
        HStack {
            Image(app.icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35)
            Text(app.name)
                .font(.title2)
            
            Spacer()
            
            
            Text("\(formattedHourUsed)/\(formattedHourMax) h")
        }
        
    }
}

#Preview {
    RowView(app: AppModel.testApps[0])
}
