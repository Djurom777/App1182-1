//
//  ContentView.swift
//  App1182
//
//  Created by IGOR on 11/12/2024.
//

import SwiftUI

struct ContentView: View {

    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            TrackerView(mainModel: TrainingViewModel())
        }
    }
}

#Preview {
    ContentView()
}
