//
//  ProfileViewModel.swift
//  App1182
//
//  Created by IGOR on 12/12/2024.
//

import SwiftUI

final class ProfileViewModel: ObservableObject {
    
    @Published var isAdd: Bool = false

    @AppStorage("Name") var Name: String = ""
    @AppStorage("Weight") var Weight: String = ""
    @AppStorage("Height") var Height: String = ""
    @AppStorage("Pulse") var Pulse: String = ""
    @AppStorage("Tech") var Tech: String = ""
    @AppStorage("Stamina") var Stamina: String = ""
    @AppStorage("Strenght") var Strenght: String = ""
    @AppStorage("Mastery") var Mastery: String = ""
    
    @Published var addName: String = ""
    @Published var addWeight: String = ""
    @Published var addHeight: String = ""
    @Published var addPulse: String = ""
    @Published var addTech: String = ""
    @Published var addStamina: String = ""
    @Published var addStrenght: String = ""
    @Published var addMastery: String = ""

    @Published var avatars: [String] = ["av1", "av2", "av3", "av4", "av5"]
    @Published var curAv: String = ""
    @AppStorage("avatar") var avatar: String = ""
}
