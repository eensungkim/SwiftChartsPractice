//
//  BarChart.swift
//  SwiftChartsPractice
//
//  Created by Kim EenSung on 4/12/24.
//

import SwiftUI
import Charts

struct BarChart: View {
    var data = ToyShape.data
    
    var body: some View {
        // ForEach 를 활용한 더 간결한 방식의 두번째 예시코드
        Chart {
            ForEach(data) {
                BarMark(
                    x: .value("Shape Type", $0.type),
                    y: .value("Total Count", $0.count)
                )
            }
        }
        
        // 각각의 BarMark 를 개별적으로 나열하는 첫번째 예시 코드
        Chart{
            BarMark(
                x: .value("Shape Type", data[0].type),
                y: .value("Total Count", data[0].count)
            )
            BarMark(
                x: .value("Shape Type", data[1].type),
                y: .value("Total Count", data[1].count)
            )
            BarMark(
                x: .value("Shape Type", data[2].type),
                y: .value("Total Count", data[2].count)
            )
        }
    }
}

#Preview {
    BarChart()
}
