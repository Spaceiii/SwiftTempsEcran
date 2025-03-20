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
    
    var appUseTime: [(date: String, time: Double)] = []
    let linearGradient = LinearGradient(
        gradient: Gradient(colors: [Color.accentColor.opacity(0.4), Color.accentColor.opacity(0)]),
        startPoint: .top,
        endPoint: .bottom
    )
    
    init(app: AppModel) {
        self.app = app
        var maxData: Double = 0
        let nbPoints: Int = 20
        for count in 0..<nbPoints {
            let formula: Double = count == 0 ? 1/Double(nbPoints) : Double(count)/Double(nbPoints)
            let time: Double = Double.random(in: Double(maxData)..<(app.useTime*formula))
            maxData = time
            self.appUseTime.append((
                date: String(count),
                time: time
            ))
        }
        self.appUseTime.append((
            date: String(nbPoints),
            time: app.useTime
        ))
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
        Chart(appUseTime, id: \.date) { appTime in
            LineMark(
                x: .value("Date", appTime.date),
                y: .value("Time", appTime.time)
            )
            .interpolationMethod(.cardinal)
            
            PointMark(
                x: .value("Date", appTime.date),
                y: .value("Time", appTime.time)
            )
            .symbol(.diamond)
            
            AreaMark(
                x: .value("Date", appTime.date),
                y: .value("Time", appTime.time)
            )
            .foregroundStyle(linearGradient)
        }
        .chartYScale(domain: 0...app.maxTime)
        .frame(height: 200)
        .padding(.horizontal, 20)
        
        Spacer()
    }
}

#Preview {
    DetailsView(app: AppViewModel().apps[0])
        .environmentObject(AppViewModel())
}
