//
//  TrackerView.swift
//  App1182
//
//  Created by IGOR on 12/12/2024.
//

import SwiftUI

struct TrackerView: View {
    
    @StateObject var viewModel = TrackerViewModel()
    @StateObject var mainModel: TrainingViewModel
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isProfile = true
                        }
                        
                    }, label: {
                        
                        Image(systemName: "person.fill")
                            .foregroundColor(Color("bg"))
                            .font(.system(size: 16, weight: .medium))
                            .padding(5)
                            .background(Circle().fill(.white))
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isTraining = true
                        }
                        
                    }, label: {
                        
                        Image(systemName: "figure.kickboxing")
                            .foregroundColor(Color("bg"))
                            .font(.system(size: 12, weight: .medium))
                            .padding(7)
                            .background(Circle().fill(.white))
                    })
                }
                .padding(.bottom)
                
                Text("Tracker")
                    .foregroundColor(.white)
                    .font(.system(size: 34, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    if mainModel.trainings.isEmpty {
                        
                        HStack {
                            
                            HStack {
                                
                                VStack {
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    GeometryReader { reader in
                                        
                                        let result = CGFloat((CGFloat(Int(0)) * reader.size.height)) / CGFloat(100)
                                        
                                        ZStack(alignment: .bottom, content: {
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(.gray.opacity(0.2))
                                                .frame(width: 5, height: reader.size.height)
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color("bg3"))
                                                .frame(width: 5, height: result)
                                        })
                                    }
                                    .frame(width: 10, height: 100, alignment: .bottom)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "figure.boxing")
                                        .foregroundColor(Color("bg"))
                                        .font(.system(size: 11, weight: .regular))
                                        .padding(5)
                                        .background(Circle().fill(.white))
                                }
                                
                                VStack {
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    GeometryReader { reader in
                                        
                                        let result = CGFloat((CGFloat(Int(0)) * reader.size.height)) / CGFloat(100)
                                        
                                        ZStack(alignment: .bottom, content: {
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(.gray.opacity(0.2))
                                                .frame(width: 5, height: reader.size.height)
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color("bg3"))
                                                .frame(width: 5, height: result)
                                        })
                                    }
                                    .frame(width: 10, height: 100, alignment: .bottom)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "figure.run")
                                        .foregroundColor(Color("bg"))
                                        .font(.system(size: 11, weight: .regular))
                                        .padding(5)
                                        .background(Circle().fill(.white))
                                }
                                
                                VStack {
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    GeometryReader { reader in
                                        
                                        let result = CGFloat((CGFloat(Int(0)) * reader.size.height)) / CGFloat(100)
                                        
                                        ZStack(alignment: .bottom, content: {
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(.gray.opacity(0.2))
                                                .frame(width: 5, height: reader.size.height)
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color("bg3"))
                                                .frame(width: 5, height: result)
                                        })
                                    }
                                    .frame(width: 10, height: 100, alignment: .bottom)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "figure.strengthtraining.traditional")
                                        .foregroundColor(Color("bg"))
                                        .font(.system(size: 11, weight: .regular))
                                        .padding(5)
                                        .background(Circle().fill(.white))
                                }
                                
                                VStack {
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    GeometryReader { reader in
                                        
                                        let result = CGFloat((CGFloat(Int(0)) * reader.size.height)) / CGFloat(100)
                                        
                                        ZStack(alignment: .bottom, content: {
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(.gray.opacity(0.2))
                                                .frame(width: 5, height: reader.size.height)
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color("bg3"))
                                                .frame(width: 5, height: result)
                                        })
                                    }
                                    .frame(width: 10, height: 100)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "figure.kickboxing")
                                        .foregroundColor(Color("bg"))
                                        .font(.system(size: 11, weight: .regular))
                                        .padding(5)
                                        .background(Circle().fill(.white))
                                }
                            }
                            .frame(maxWidth: .infinity)
                            
                            VStack(alignment: .leading) {
                                
                                Text("Best Result")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                                HStack {
                                    
                                    Text("Approaches")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    Text("\(0)")
                                        .foregroundColor(.white.opacity(0.4))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                .padding(9)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                                
                                HStack {
                                    
                                    Text("Quantity")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    Text("\(0)")
                                        .foregroundColor(.white.opacity(0.4))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                .padding(9)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                                
                                HStack {
                                    
                                    Text("Time")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    Text("\(0)")
                                        .foregroundColor(.white.opacity(0.4))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                .padding(9)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                                HStack {
                                    
                                    Text("Part")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    Text("-")
                                        .foregroundColor(.white.opacity(0.4))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                .padding(9)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg2")))
                        
                        Text("Efficiency")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical, 8)
                        
                        HStack {
                            
                            ForEach(viewModel.periods, id: \.self) { index in
                                
                                Button(action: {
                                    
                                    viewModel.curPeriod = index
                                    
                                }, label: {
                                    
                                    Text(index)
                                        .foregroundColor(viewModel.curPeriod == index ? Color("bg") : .white.opacity(0.3))
                                        .font(.system(size: 15, weight: .medium))
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 25)
                                        .background(RoundedRectangle(cornerRadius: 6).fill(.white.opacity(viewModel.curPeriod == index ? 1 : 0)))
                                })
                            }
                        }
                        .padding(3)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        if viewModel.curPeriod == "Week" {
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Weight")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Height")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Pulse")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                        } else if viewModel.curPeriod == "Month" {
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Weight")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Height")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Pulse")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                        } else {
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Weight")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Height")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Pulse")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(0)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        }
                        
                    } else {
                        
                        HStack {
                            
                            HStack {
                                
                                VStack {
                                    
                                    Text("\(viewModel.a1)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    GeometryReader { reader in
                                        
                                        let result = CGFloat((CGFloat(Int(viewModel.a1) ?? 0) * reader.size.height)) / CGFloat(100)
                                        
                                        ZStack(alignment: .bottom, content: {
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(.gray.opacity(0.2))
                                                .frame(width: 5, height: reader.size.height)
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color("bg3"))
                                                .frame(width: 5, height: result)
                                        })
                                    }
                                    .frame(width: 10, height: 100, alignment: .bottom)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "figure.boxing")
                                        .foregroundColor(Color("bg"))
                                        .font(.system(size: 11, weight: .regular))
                                        .padding(5)
                                        .background(Circle().fill(.white))
                                }
                                
                                VStack {
                                    
                                    Text("\(viewModel.a2)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    GeometryReader { reader in
                                        
                                        let result = CGFloat((CGFloat(Int(viewModel.a2) ?? 0) * reader.size.height)) / CGFloat(100)
                                        
                                        ZStack(alignment: .bottom, content: {
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(.gray.opacity(0.2))
                                                .frame(width: 5, height: reader.size.height)
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color("bg3"))
                                                .frame(width: 5, height: result)
                                        })
                                    }
                                    .frame(width: 10, height: 100, alignment: .bottom)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "figure.run")
                                        .foregroundColor(Color("bg"))
                                        .font(.system(size: 11, weight: .regular))
                                        .padding(5)
                                        .background(Circle().fill(.white))
                                }
                                
                                VStack {
                                    
                                    Text("\(viewModel.a3)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    GeometryReader { reader in
                                        
                                        let result = CGFloat((CGFloat(Int(viewModel.a3) ?? 0) * reader.size.height)) / CGFloat(100)
                                        
                                        ZStack(alignment: .bottom, content: {
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(.gray.opacity(0.2))
                                                .frame(width: 5, height: reader.size.height)
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color("bg3"))
                                                .frame(width: 5, height: result)
                                        })
                                    }
                                    .frame(width: 10, height: 100, alignment: .bottom)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "figure.strengthtraining.traditional")
                                        .foregroundColor(Color("bg"))
                                        .font(.system(size: 11, weight: .regular))
                                        .padding(5)
                                        .background(Circle().fill(.white))
                                }
                                
                                VStack {
                                    
                                    Text("\(viewModel.a3)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    GeometryReader { reader in
                                        
                                        let result = CGFloat((CGFloat(Int(viewModel.a3) ?? 0) * reader.size.height)) / CGFloat(100)
                                        
                                        ZStack(alignment: .bottom, content: {
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(.gray.opacity(0.2))
                                                .frame(width: 5, height: reader.size.height)
                                            
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color("bg3"))
                                                .frame(width: 5, height: result)
                                        })
                                    }
                                    .frame(width: 10, height: 100)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "figure.kickboxing")
                                        .foregroundColor(Color("bg"))
                                        .font(.system(size: 11, weight: .regular))
                                        .padding(5)
                                        .background(Circle().fill(.white))
                                }
                            }
                            .frame(maxWidth: .infinity)
                            
                            VStack(alignment: .leading) {
                                
                                Text("Best Result")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                                HStack {
                                    
                                    Text("Approaches")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.app)")
                                        .foregroundColor(.white.opacity(0.4))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                .padding(9)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                                
                                HStack {
                                    
                                    Text("Quantity")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.quan)")
                                        .foregroundColor(.white.opacity(0.4))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                .padding(9)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                                
                                HStack {
                                    
                                    Text("Time")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.time)")
                                        .foregroundColor(.white.opacity(0.4))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                .padding(9)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                                HStack {
                                    
                                    Text("Part")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                    Spacer()
                                    
                                    Text("-")
                                        .foregroundColor(.white.opacity(0.4))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                .padding(9)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg2")))
                        
                        Text("Efficiency")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical, 8)
                        
                        HStack {
                            
                            ForEach(viewModel.periods, id: \.self) { index in
                                
                                Button(action: {
                                    
                                    viewModel.curPeriod = index
                                    
                                }, label: {
                                    
                                    Text(index)
                                        .foregroundColor(viewModel.curPeriod == index ? Color("bg") : .white.opacity(0.3))
                                        .font(.system(size: 15, weight: .medium))
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 25)
                                        .background(RoundedRectangle(cornerRadius: 6).fill(.white.opacity(viewModel.curPeriod == index ? 1 : 0)))
                                })
                            }
                        }
                        .padding(3)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                        
                        if viewModel.curPeriod == "Week" {
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Weight")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.ww)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.iww)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Height")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.wh)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.iwh)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Pulse")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.wp)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.iwp)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                        } else if viewModel.curPeriod == "Month" {
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Weight")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.mw)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.imw)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Height")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.mh)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.imh)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Pulse")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.mp)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.imp)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                        } else {
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Weight")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.yw)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.iyw)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Height")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.yh)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.iyh)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            VStack {
                                
                                HStack {
                                    
                                    Text("Pulse")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.yp)")
                                        .foregroundColor(.white.opacity(0.5))
                                        .font(.system(size: 16, weight: .medium))
                                }
                                
                                HStack {
                                    
                                    Text("Indicator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.iyp)%")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                }
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 9).fill(.white.opacity(0.15)))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        }
                    }
                }
            }
            .padding()
        }
        .sheet(isPresented: $viewModel.isProfile, content: {
            
            ProfileView(mainModel: viewModel)
        })
        .sheet(isPresented: $viewModel.isTraining, content: {
            
            TrainingView(mainModel: viewModel)
        })
        .onAppear {
            
            mainModel.fetchTrainings()
        }
    }
}

#Preview {
    TrackerView(mainModel: TrainingViewModel())
}
