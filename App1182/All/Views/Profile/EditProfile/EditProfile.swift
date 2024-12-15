//
//  EditProfile.swift
//  App1182
//
//  Created by IGOR on 14/12/2024.
//

import SwiftUI

struct EditProfile: View {

    @StateObject var viewModel: ProfileViewModel
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                                                
                        withAnimation(.spring()) {
                            
                            viewModel.isAdd = false
                        }
                        
                    }, label: {
                        
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color("bg3"))
                            .font(.system(size: 17, weight: .medium))
                        
                        Text("Cancel")
                            .foregroundColor(Color("bg3"))
                            .font(.system(size: 15, weight: .medium))
                    })
                    
                    Spacer()
                    
                    Button(action: {

                        viewModel.Name = viewModel.addName
                        viewModel.Weight = viewModel.addWeight
                        viewModel.Height = viewModel.addHeight
                        viewModel.Pulse = viewModel.addPulse
                        viewModel.Tech = viewModel.addTech
                        viewModel.Stamina = viewModel.addStamina
                        viewModel.Strenght = viewModel.addStrenght
                        viewModel.Mastery = viewModel.addMastery
                        viewModel.avatar = viewModel.curAv
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isAdd = false
                        }
                        
                    }, label: {
                        
                        Text("Save")
                            .foregroundColor(Color("bg3"))
                            .font(.system(size: 17, weight: .medium))
                    })

                }
                .padding(.bottom, 15)
                
                Text("Edit profile")
                    .foregroundColor(.white)
                    .font(.system(size: 34, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 8)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 18) {
                        
                        Text("Avatar")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)

                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack {
                                
                                ForEach(viewModel.avatars, id: \.self) { index in
                                    
                                    Button(action: {
                                        
                                        viewModel.curAv = index
                                        
                                    }, label: {
                                        
                                        Image(index)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 180)
                                            .padding(5)
                                            .background(Color.yellow.opacity(viewModel.curAv == index ? 0.7 : 0))
                                            .cornerRadius(15)
                                    })
                                }
                            }
                        }
                        
                        Text("Name")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            
                            Image(systemName: "person.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))

                            Text("Name")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .opacity(viewModel.addName.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.addName)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                            })
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        Text("Parameters")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            
                            Image(systemName: "scalemass.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))

                            Text("Weight")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .opacity(viewModel.addWeight.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.addWeight)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                            })
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        HStack {
                            
                            Image(systemName: "figure.mixed.cardio")
                                .foregroundColor(Color("bg"))
                                .font(.system(size: 8, weight: .regular))
                                .padding(2)
                                .background(Circle().fill(.white))
                            
                            Text("Height")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .opacity(viewModel.addHeight.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.addHeight)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                            })
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        HStack {
                            
                            Image(systemName: "waveform.path.ecg")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text("Pulse")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .opacity(viewModel.addPulse.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.addPulse)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                            })
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        Text("Indicators")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)

                        HStack {
                            
                            Image(systemName: "figure.boxing")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text("Techniques")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .opacity(viewModel.addTech.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.addTech)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                            })
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        HStack {
                            
                            Image(systemName: "figure.run")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text("Stamina")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .opacity(viewModel.addStamina.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.addStamina)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                            })
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        HStack {
                            
                            Image(systemName: "figure.strengthtraining.traditional")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text("Strenght")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .opacity(viewModel.addStrenght.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.addStrenght)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                            })
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        HStack {
                            
                            Image(systemName: "figure.kickboxing")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text("Mastery")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .opacity(viewModel.addMastery.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.addMastery)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                            })
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))

                        }
                    }

            }
            .padding()
        }
    }
}

#Preview {
    EditProfile(viewModel: ProfileViewModel())
}
