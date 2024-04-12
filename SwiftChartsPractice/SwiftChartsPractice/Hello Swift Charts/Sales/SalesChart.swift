//
//  SalesChart.swift
//  SwiftChartsPractice
//
//  Created by Kim EenSung on 4/12/24.
//

import SwiftUI
import Charts

struct SalesSummary: Identifiable {
    let weekday: Date
    let sales: Int
    
    var id: Date { weekday }
}

struct SalesChart: View {
    @State var city: City = .cupertino
    
    var data: [SalesSummary] {
        switch city {
        case .cupertino:
            return SalesSummary.cupertinoData
        case .sanFrancisco:
            return SalesSummary.sanFranciscoData
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Day + Location With Most Sales")
                Spacer()
            }
            Picker("City", selection: $city.animation(.easeOut)) {
                Text("Cupertino").tag(City.cupertino)
                Text("San Francisco").tag(City.sanFrancisco)
            }
            .pickerStyle(.segmented)
            
            Chart(data) {
                BarMark(
                    x: .value("Day", $0.weekday, unit: .day),
                    y: .value("Sales", $0.sales)
                )
            }
            
            Spacer(minLength: 350)
        }
    }
}

#Preview {
    SalesSummaryChart()
}

extension SalesSummary {
    static let cupertinoData: [SalesSummary] = [
        .init(weekday: .date(2022, 5, 2), sales: 54),
        .init(weekday: .date(2022, 5, 3), sales: 42),
        .init(weekday: .date(2022, 5, 4), sales: 88),
        .init(weekday: .date(2022, 5, 5), sales: 49),
        .init(weekday: .date(2022, 5, 6), sales: 42),
        .init(weekday: .date(2022, 5, 7), sales: 125),
        .init(weekday: .date(2022, 5, 8), sales: 67)
    ]
    
    static let sanFranciscoData: [SalesSummary] = [
        .init(weekday: .date(2022, 5, 2), sales: 81),
        .init(weekday: .date(2022, 5, 3), sales: 90),
        .init(weekday: .date(2022, 5, 4), sales: 52),
        .init(weekday: .date(2022, 5, 5), sales: 72),
        .init(weekday: .date(2022, 5, 6), sales: 84),
        .init(weekday: .date(2022, 5, 7), sales: 84),
        .init(weekday: .date(2022, 5, 8), sales: 137)
    ]
}

enum City {
    case cupertino
    case sanFrancisco
}

extension Date {
    static func date(_ year: Int, _ month: Int, _ day: Int) -> Date {
        let calendar = Calendar.current
        
        var components = DateComponents()
        components.year = year
        components.month = month
        components.day = day
        
        guard let result = calendar.date(from: components) else {
            return Date()
        }
        return result
    }
}
