//
//  TrackerViewModel.swift
//  App1182
//
//  Created by IGOR on 12/12/2024.
//

import SwiftUI

final class TrackerViewModel: ObservableObject {
    
    @Published var isProfile: Bool = false
    @Published var isTraining: Bool = false

    @Published var periods: [String] = ["Week", "Month", "Year"]
    @Published var curPeriod: String = "Week"

    @Published var a1: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var a2: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var a3: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var a4: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var app: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var quan: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var time: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var part: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var ww: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var wh: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var wp: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var mw: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var mh: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var mp: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var yw: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var yh: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var yp: String = String(format: "%.f", Double(.random(in: 1...100)))

    @Published var iww: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var iwh: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var iwp: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var imw: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var imh: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var imp: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var iyw: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var iyh: String = String(format: "%.f", Double(.random(in: 1...100)))
    @Published var iyp: String = String(format: "%.f", Double(.random(in: 1...100)))

}
