//
//  AddTraining.swift
//  App1182
//
//  Created by IGOR on 13/12/2024.
//

import SwiftUI

struct AddTraining: View {

    @StateObject var viewModel: TrainingViewModel
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        
                        viewModel.curType = ""
                        viewModel.quantity = 0
                        viewModel.Approaches = 0
                        viewModel.trTime = ""
                        viewModel.trComp = ""
                        viewModel.trBP = ""
                        
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
                        
                        viewModel.trType = viewModel.curType
                        
                        viewModel.trQuan = String(viewModel.quantity)
                        viewModel.trApp = String(viewModel.Approaches)
                        
                        viewModel.addTraining()
                        
                        viewModel.curType = ""
                        viewModel.quantity = 0
                        viewModel.Approaches = 0
                        viewModel.trTime = ""
                        viewModel.trComp = ""
                        viewModel.trBP = ""
                        
                        viewModel.fetchTrainings()
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isAdd = false
                        }
                        
                    }, label: {
                        
                        Text("Save")
                            .foregroundColor(Color("bg3"))
                            .font(.system(size: 17, weight: .medium))
                    })
                    .opacity(viewModel.curType.isEmpty || viewModel.trTime.isEmpty || viewModel.trComp.isEmpty || viewModel.trBP.isEmpty ? 0.5 : 1)
                    .disabled(viewModel.curType.isEmpty || viewModel.trTime.isEmpty || viewModel.trComp.isEmpty || viewModel.trBP.isEmpty ? true : false)
                }
                .padding(.bottom, 15)
                
                Text("Creating Training")
                    .foregroundColor(.white)
                    .font(.system(size: 34, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 8)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 18) {
                        
                        Text("Type")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)

                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack {
                                
                                ForEach(viewModel.Types, id: \.self) { index in
                                    
                                    Button(action: {
                                        
                                        viewModel.curType = index
                                        
                                    }, label: {
                                        
                                        Text(index)
                                            .foregroundColor(.white)
                                            .font(.system(size: 16, weight: .medium))
                                            .padding(.horizontal)
                                            .frame(height: 45)
                                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg3")))
                                            .opacity(viewModel.curType == index ? 1 : 0.5)
                                    })
                                }
                            }
                        }
                        
                        Text("Parameters")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            
                            Image(systemName: "clock.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text("Time")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .opacity(viewModel.trTime.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.trTime)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                            })
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        HStack {
                            
                            Image(systemName: "figure.strengthtraining.traditional")
                                .foregroundColor(Color("bg"))
                                .font(.system(size: 8, weight: .regular))
                                .padding(2)
                                .background(Circle().fill(.white))
                            
                            Text("Complexity")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .opacity(viewModel.trComp.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.trComp)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                            })
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        HStack {
                            
                            Image(systemName: "figure.arms.open")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text("Body part")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular))
                                .padding(.trailing)
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .opacity(viewModel.trBP.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.trBP)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                            })
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        Text("Plan")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            
                            Image(systemName: "scalemass.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text("Quantity")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .medium))
                                .padding(.trailing)
                            
                            Spacer()

                            Text("\(viewModel.quantity)")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .padding(.trailing, 50)
                            
                            HStack {
                                
                                Button(action: {
                                    
                                    viewModel.quantity -= 1
                                    
                                }, label: {
                                    
                                    Text("-")
                                        .foregroundColor(.white)
                                        .font(.system(size: 24, weight: .medium))
                                })
                                .frame(maxWidth: .infinity)
                                
                                Rectangle()
                                    .fill(.white.opacity(0.6))
                                    .frame(width: 1, height: 25)
                                
                                Button(action: {
                                    
                                    viewModel.quantity += 1
                                    
                                }, label: {
                                    
                                    Text("+")
                                        .foregroundColor(.white)
                                        .font(.system(size: 24, weight: .medium))
                                })
                                .frame(maxWidth: .infinity)

                            }
                            .frame(width: 110, height: 35)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg3")))

                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        HStack {
                            
                            Image(systemName: "arrow.counterclockwise")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text("Approaches")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .medium))
                                .padding(.trailing)
                            
                            Spacer()

                            Text("\(viewModel.Approaches)")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .medium))
                                    .padding(.trailing, 50)
                            
                            HStack {
                                
                                Button(action: {
                                    
                                    viewModel.Approaches -= 1
                                    
                                }, label: {
                                    
                                    Text("-")
                                        .foregroundColor(.white)
                                        .font(.system(size: 24, weight: .medium))
                                })
                                .frame(maxWidth: .infinity)
                                
                                Rectangle()
                                    .fill(.white.opacity(0.6))
                                    .frame(width: 1, height: 25)
                                
                                Button(action: {
                                    
                                    viewModel.Approaches += 1
                                    
                                }, label: {
                                    
                                    Text("+")
                                        .foregroundColor(.white)
                                        .font(.system(size: 24, weight: .medium))
                                })
                                .frame(maxWidth: .infinity)

                            }
                            .frame(width: 110, height: 35)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg3")))

                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                    }
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    AddTraining(viewModel: TrainingViewModel())
}
