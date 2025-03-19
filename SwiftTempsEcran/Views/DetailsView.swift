//
//  DetailsView.swift
//  SwiftTempsEcran
//
//  Created by meyer timothee on 19/03/2025.
//

import SwiftUI
import Charts

struct DetailsView: View {
    @EnvironmentObject var appVM: AppViewModel
    @State var app: AppModel
    
    var data: [(date: String, time: Int)] = []
    
    init(app: AppModel) {
        self.app = app
        for count in 0...4 {
            self.data[count] = (
                
            )
        }
    }
    
    var body: some View {
        Spacer()
        
        
        Image(app.icon)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100)
        Text(app.name)
            .font(.title)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        
        Spacer()
        
        Button {
            appVM.toggleExclude(app: app)
        } label: {
            Text(app.exclude ? "Inclure" : "Exclure")
                .foregroundStyle(Color.white)
                .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                .background(app.exclude ? Color.blue : Color.red)
                .cornerRadius(10)
        }
        
        Spacer()
        
        // random * 5, chaque random entre temps max et random précédent
        
        Text("test")
        Chart {
            AreaMark(x: <#T##PlottableValue<Plottable>#>, y: <#T##PlottableValue<Plottable>#>)
        }
        
        Spacer()
    }
}

#Preview {
    DetailsView(app: AppViewModel().apps[0])
        .environmentObject(AppViewModel())
}
