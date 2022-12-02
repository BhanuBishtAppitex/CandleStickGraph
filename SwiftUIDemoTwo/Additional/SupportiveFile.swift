//
//  SupportiveFile.swift
//  SwiftUIDemoTwo
//
//  Created by wOOx Technology on 02/12/22.
//

import Foundation

struct Data {
    
    static var data:[Int] = [12,11,10,4,5,6,7,8,9,10,11,12]
    static var data2:[Int] = [17,13,20,18,16,5,7,12,9,11,19,15]
    static let dataSetMain: [CandleData] =  [
        CandleData(xValue: 1.2, shadowH: 6.85, shadowL: 4.20, open: 5.0, close: 6.0),
        CandleData(xValue: 1.2, shadowH: 4.85, shadowL: 2.20, open: 4.0, close: 4.72),
        CandleData(xValue: 1.4, shadowH: 2.38, shadowL: 2.22, open: 2.28, close: 2.35),
        CandleData(xValue: 1.6, shadowH: 2.42, shadowL: 2.25, open: 2.38, close: 2.36),
        CandleData(xValue: 1.8, shadowH: 2.35, shadowL: 2.22, open: 2.25, close: 2.32),
        CandleData(xValue: 2.0, shadowH: 2.35, shadowL: 2.22, open: 2.32, close: 2.25),
        CandleData(xValue: 2.2, shadowH: 2.28, shadowL: 2.18, open: 2.23, close: 2.20),
        CandleData(xValue: 2.4, shadowH: 2.32, shadowL: 2.23, open: 2.24, close: 2.28),
        CandleData(xValue: 2.6, shadowH: 2.40, shadowL: 2.25, open: 2.35, close: 2.28),
        CandleData(xValue: 2.8, shadowH: 2.45, shadowL: 2.32, open: 2.33, close: 2.42),
        CandleData(xValue: 3.0, shadowH: 2.31, shadowL: 2.25, open: 2.31, close: 2.25),
        CandleData(xValue: 3.2, shadowH: 2.41, shadowL: 2.27, open: 2.29, close: 2.32),
        CandleData(xValue: 3.4, shadowH: 3.19, shadowL: 3.05, open: 3.14, close: 3.18),
        CandleData(xValue: 3.6, shadowH: 3.13, shadowL: 2.98, open: 3.11, close: 3.05),
        CandleData(xValue: 3.8, shadowH: 3.13, shadowL: 2.99, open: 3.09, close: 2.99),
        CandleData(xValue: 4.0, shadowH: 3.15, shadowL: 3.02, open: 3.11, close: 3.13),
        CandleData(xValue: 4.2, shadowH: 3.11, shadowL: 2.98, open: 3.09, close: 3.01),
        CandleData(xValue: 4.4, shadowH: 3.03, shadowL: 2.93, open: 3.01, close: 2.99),
        CandleData(xValue: 4.6, shadowH: 2.99, shadowL: 2.90, open: 2.97, close: 2.92),
        CandleData(xValue: 4.8, shadowH: 2.95, shadowL: 2.85, open: 2.92, close: 2.80),
        CandleData(xValue: 5.0, shadowH: 6.85, shadowL: 6.45, open: 6.49, close: 6.72),
    ]
    static let dataSet: [CandleData] =  [
        CandleData(xValue: 48, shadowH: 68.5, shadowL: 64.5, open: 64.9, close: 67.2),
        CandleData(xValue: 30, shadowH: 23.8, shadowL: 22.2, open: 22.8, close: 23.5),
        CandleData(xValue: 31, shadowH: 24.2, shadowL: 22.5, open: 23.8, close: 23.6),
        CandleData(xValue: 32, shadowH: 23.5, shadowL: 22.2, open: 22.5, close: 23.2),
        CandleData(xValue: 33, shadowH: 23.5, shadowL: 22.2, open: 23.2, close: 22.5),
        CandleData(xValue: 34, shadowH: 22.8, shadowL: 21.8, open: 22.3, close: 22.0),
        CandleData(xValue: 35, shadowH: 23.2, shadowL: 22.3, open: 22.4, close: 22.8),
        CandleData(xValue: 36, shadowH: 24.0, shadowL: 22.5, open: 23.5, close: 22.8),
        CandleData(xValue: 37, shadowH: 24.5, shadowL: 23.2, open: 23.3, close: 24.2),
        CandleData(xValue: 38, shadowH: 23.1, shadowL: 22.5, open: 23.1, close: 22.5),
        CandleData(xValue: 39, shadowH: 24.1, shadowL: 22.7, open: 22.9, close: 23.2),
        CandleData(xValue: 40, shadowH: 31.9, shadowL: 30.5, open: 31.4, close: 31.8),
        CandleData(xValue: 41, shadowH: 31.3, shadowL: 29.8, open: 31.1, close: 30.5),
        CandleData(xValue: 42, shadowH: 31.3, shadowL: 29.9, open: 30.9, close: 29.9),
        CandleData(xValue: 43, shadowH: 31.5, shadowL: 30.2, open: 31.1, close: 31.3),
        CandleData(xValue: 44, shadowH: 31.1, shadowL: 29.8, open: 30.9, close: 30.1),
        CandleData(xValue: 45, shadowH: 30.3, shadowL: 29.3, open: 30.1, close: 29.9),
        CandleData(xValue: 46, shadowH: 29.9, shadowL: 29.0, open: 29.7, close: 29.2),
        CandleData(xValue: 47, shadowH: 29.5, shadowL: 28.5, open: 29.2, close: 28.0),
        CandleData(xValue: 48, shadowH: 68.5, shadowL: 64.5, open: 64.9, close: 67.2),
    ]
    static let dataSetTwo: [CandleData] =  [
        CandleData(xValue: 30, shadowH: 23, shadowL: 22, open: 22, close: 23),
        CandleData(xValue: 31, shadowH: 24, shadowL: 22, open: 23, close: 23),
        CandleData(xValue: 32, shadowH: 23, shadowL: 22, open: 22, close: 23),
        CandleData(xValue: 33, shadowH: 23, shadowL: 22, open: 23, close: 22),
        CandleData(xValue: 34, shadowH: 22, shadowL: 21, open: 22, close: 22),
        CandleData(xValue: 35, shadowH: 23, shadowL: 22, open: 22, close: 22),
        CandleData(xValue: 36, shadowH: 24, shadowL: 22, open: 23, close: 22),
        CandleData(xValue: 37, shadowH: 24, shadowL: 23, open: 23, close: 24),
        CandleData(xValue: 38, shadowH: 22, shadowL: 23, open: 23, close: 22),
        CandleData(xValue: 39, shadowH: 24, shadowL: 22, open: 22, close: 23),
        CandleData(xValue: 40, shadowH: 31, shadowL: 30, open: 31, close: 31),
        CandleData(xValue: 41, shadowH: 31, shadowL: 29, open: 31, close: 30),
        CandleData(xValue: 42, shadowH: 31, shadowL: 29, open: 30, close: 29),
        CandleData(xValue: 43, shadowH: 31, shadowL: 30, open: 31, close: 31),
        CandleData(xValue: 44, shadowH: 31, shadowL: 29, open: 30, close: 30),
        CandleData(xValue: 45, shadowH: 30, shadowL: 29, open: 30, close: 29),
        CandleData(xValue: 46, shadowH: 29, shadowL: 29, open: 29, close: 29),
        CandleData(xValue: 47, shadowH: 29, shadowL: 28, open: 29, close: 28),
        CandleData(xValue: 48, shadowH: 29, shadowL: 28, open: 28, close: 29),
    ]
   
}

func monthAbbreviationFromInt(_ month: Int) -> String {
    let ma = Calendar.current.shortMonthSymbols
    return ma[month]
}


struct CandleData: Identifiable {
    var id: UUID = UUID()
    var width: Int = 100
    var height: Int = 100
   
    var xValue: Double
    var shadowH: Double
    var shadowL: Double
    var open: Double
    var close: Double
}
