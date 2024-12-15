//
//  ProfileView.swift
//  App1182
//
//  Created by IGOR on 12/12/2024.
//

import SwiftUI
import StoreKit

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewModel()
    @StateObject var mainModel: TrackerViewModel
    @Environment(\.presentationMode) var back
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack(spacing: 14) {
                
                HStack {
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            mainModel.isProfile = false
                        }
                        
                    }, label: {
                        
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color("bg3"))
                            .font(.system(size: 17, weight: .medium))
                        
                        Text("Tracker")
                            .foregroundColor(Color("bg3"))
                            .font(.system(size: 16, weight: .regular))
                        
                    })

                    Spacer()
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isAdd = true
                        }
                        
                    }, label: {
                        
                        Image(systemName: "pencil")
                            .foregroundColor(Color("bg"))
                            .font(.system(size: 15, weight: .regular))
                            .padding(3)
                            .background(Circle().fill(.white))
                    })
                }
                .padding(.bottom)
                
                if viewModel.Name.isEmpty {
                    
                    Text("Name")
                        .foregroundColor(.white)
                        .font(.system(size: 34, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                } else {
                    
                    Text(viewModel.Name)
                        .foregroundColor(.white)
                        .font(.system(size: 34, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 16) {
                        
                        HStack {
 
                                if viewModel.avatar.isEmpty {
                                    
                                    Image(systemName: "person.fill")
                                        .foregroundColor(Color("bg3"))
                                        .font(.system(size: 22, weight: .regular))
                                        .padding(8)
                                        .background(Circle().fill(.white))
                                        .frame(maxWidth: .infinity)
                                        .frame(maxHeight: .infinity)
                                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg3")))
                                    
                                } else {
                                    
                                    Image(viewModel.avatar)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                                                            
                            VStack(spacing: 13) {
                                
                                HStack {
                                    
                                    Image(systemName: "scalemass.fill")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .regular))
                                    
                                    Text("Weight")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    if viewModel.Weight.isEmpty {
                                        
                                        Text("0")
                                            .foregroundColor(.white.opacity(0.4))
                                            .font(.system(size: 16, weight: .medium))
                                        
                                    } else {
                                        
                                        Text(viewModel.Weight)
                                            .foregroundColor(.white)
                                            .font(.system(size: 16, weight: .medium))
                                    }
                                }
                                .padding()
                                .frame(maxHeight: .infinity)
                                .background(RoundedRectangle(cornerRadius: 14).fill(Color("bg2")))
                                
                                HStack {
                                    
                                    Image(systemName: "figure.mixed.cardio")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .regular))
                                    
                                    Text("Height")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    if viewModel.Height.isEmpty {
                                        
                                        Text("0")
                                            .foregroundColor(.white.opacity(0.4))
                                            .font(.system(size: 16, weight: .medium))
                                        
                                    } else {
                                        
                                        Text(viewModel.Height)
                                            .foregroundColor(.white)
                                            .font(.system(size: 16, weight: .medium))
                                    }
                                }
                                .padding()
                                .frame(maxHeight: .infinity)
                                .background(RoundedRectangle(cornerRadius: 14).fill(Color("bg2")))
                                
                                HStack {
                                    
                                    Image(systemName: "waveform.path.ecg")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .regular))
                                    
                                    Text("Pulse")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    if viewModel.Pulse.isEmpty {
                                        
                                        Text("0")
                                            .foregroundColor(.white.opacity(0.4))
                                            .font(.system(size: 16, weight: .medium))
                                        
                                    } else {
                                        
                                        Text(viewModel.Pulse)
                                            .foregroundColor(.white)
                                            .font(.system(size: 16, weight: .medium))
                                    }
                                }
                                .padding()
                                .frame(maxHeight: .infinity)
                                .background(RoundedRectangle(cornerRadius: 14).fill(Color("bg2")))
                            }
                            .frame(maxWidth: .infinity)
                        }
                        .frame(height: 200)
                        
                        Text("Indicators")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            
                            Image(systemName: "figure.boxing")
                                .foregroundColor(Color("bg"))
                                .font(.system(size: 11, weight: .regular))
                                .padding(5)
                                .background(Circle().fill(.white))
                            
                            Text("Techniques")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            if viewModel.Tech.isEmpty {
                                
                                Text("0")
                                    .foregroundColor(.white.opacity(0.4))
                                    .font(.system(size: 16, weight: .medium))
                                
                            } else {
                                
                                Text(viewModel.Tech)
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                            }
                        }
                        .padding(12)
                        .background(RoundedRectangle(cornerRadius: 14).fill(Color("bg2")))
                        
                        HStack {
                            
                            Image(systemName: "figure.run")
                                .foregroundColor(Color("bg"))
                                .font(.system(size: 11, weight: .regular))
                                .padding(5)
                                .background(Circle().fill(.white))
                            
                            Text("Stamina")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            if viewModel.Stamina.isEmpty {
                                
                                Text("0")
                                    .foregroundColor(.white.opacity(0.4))
                                    .font(.system(size: 16, weight: .medium))
                                
                            } else {
                                
                                Text(viewModel.Stamina)
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                            }
                        }
                        .padding(12)
                        .background(RoundedRectangle(cornerRadius: 14).fill(Color("bg2")))
                        
                        HStack {
                            
                            Image(systemName: "figure.strengthtraining.traditional")
                                .foregroundColor(Color("bg"))
                                .font(.system(size: 11, weight: .regular))
                                .padding(5)
                                .background(Circle().fill(.white))
                            
                            Text("Strenght")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            if viewModel.Strenght.isEmpty {
                                
                                Text("0")
                                    .foregroundColor(.white.opacity(0.4))
                                    .font(.system(size: 16, weight: .medium))
                                
                            } else {
                                
                                Text(viewModel.Strenght)
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                            }
                        }
                        .padding(12)
                        .background(RoundedRectangle(cornerRadius: 14).fill(Color("bg2")))
                        
                        HStack {
                            
                            Image(systemName: "figure.kickboxing")
                                .foregroundColor(Color("bg"))
                                .font(.system(size: 11, weight: .regular))
                                .padding(5)
                                .background(Circle().fill(.white))
                            
                            Text("Mastery")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            if viewModel.Strenght.isEmpty {
                                
                                Text("0")
                                    .foregroundColor(.white.opacity(0.4))
                                    .font(.system(size: 16, weight: .medium))
                                
                            } else {
                                
                                Text(viewModel.Strenght)
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                            }
                        }
                        .padding(12)
                        .background(RoundedRectangle(cornerRadius: 14).fill(Color("bg2")))
                        
                        Text("More")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack {
                                                                
                                Button(action: {
                                    
                                    guard let url = URL(string: "https://www.termsfeed.com/live/4586244d-24ab-4373-88d3-63570b07c4f2") else { return }
                                    
                                    UIApplication.shared.open(url)
                                    
                                }, label: {
                                    
                                    VStack {
                                        
                                        Text("Usage Policy")
                                            .foregroundColor(.white)
                                            .font(.system(size: 22, weight: .bold))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        Spacer()
                                        
                                        Image(systemName: "arrow.up.right")
                                            .foregroundColor(Color("bg3"))
                                            .font(.system(size: 13, weight: .regular))
                                            .padding(5)
                                            .background(Circle().fill(.white))
                                            .frame(maxWidth: .infinity, alignment: .trailing)
                                        
                                    }
                                    .padding(18)
                                    .frame(width: 150, height: 150)
                                    .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg3")))
                                })
                                
                                Button(action: {
                                    
                                    SKStoreReviewController.requestReview()
                                    
                                }, label: {
                                    
                                    VStack {
                                        
                                        Text("Rate App")
                                            .foregroundColor(.white)
                                            .font(.system(size: 22, weight: .bold))
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        Spacer()
                                        
                                        Image(systemName: "arrow.up.right")
                                            .foregroundColor(Color("bg3"))
                                            .font(.system(size: 13, weight: .regular))
                                            .padding(5)
                                            .background(Circle().fill(.white))
                                            .frame(maxWidth: .infinity, alignment: .trailing)
                                        
                                    }
                                    .padding(18)
                                    .frame(width: 150, height: 150)
                                    .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg3")))
                                })

                            }
                        }
                    }
                }
            }
            .padding()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            EditProfile(viewModel: viewModel)
        })
    }
}

#Preview {
    ProfileView(mainModel: TrackerViewModel())
}
