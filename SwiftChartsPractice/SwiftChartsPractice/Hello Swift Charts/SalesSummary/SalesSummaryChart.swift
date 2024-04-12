//
//  SalesSummaryChart.swift
//  SwiftChartsPractice
//
//  Created by Kim EenSung on 4/12/24.
//

import SwiftUI
import Charts

struct Series: Identifiable {
    let city: String
    let sales: [SalesSummary]
    
    var id: String { city }
    
    static var seriesData: [Series] = [
        .init(city: "Cupertino", sales: SalesSummary.cupertinoData),
        .init(city: "San Francisco", sales: SalesSummary.sanFranciscoData)
    ]
}

struct SalesSummaryChart: View {
    var seriesData = Series.seriesData
    
    var body: some View {
        VStack {
            Chart(seriesData) { series in
                ForEach(series.sales) { sale in
                    LineMark(
                        x: .value("Day", sale.weekday),
                        y: .value("Sales", sale.sales)
                    )
                    .foregroundStyle(by: .value("City", series.city))
                    .symbol(by: .value("City", series.city))
                }
            }
        }
        .padding(15)
    }
}

#Preview {
    SalesSummaryChart()
}
