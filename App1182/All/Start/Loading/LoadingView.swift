//
//  LoadingView.swift
//  App1182
//
//  Created by IGOR on 12/12/2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("Llogo")
                    .resizable()
            }
            
            VStack {
                
                Spacer()
                
                VStack {
                    
                    ProgressView()
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 115)
                .background(Rectangle().fill(.white))
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    LoadingView()
}
