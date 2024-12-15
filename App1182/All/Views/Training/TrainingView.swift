//
//  TrainingView.swift
//  App1182
//
//  Created by IGOR on 12/12/2024.
//

import SwiftUI

struct TrainingView: View {
    
    @StateObject var viewModel = TrainingViewModel()
    @StateObject var mainModel: TrackerViewModel
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            mainModel.isTraining = false
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
                        
                        Image(systemName: "plus")
                            .foregroundColor(Color("bg"))
                            .font(.system(size: 16, weight: .medium))
                            .padding(5)
                            .background(Circle().fill(.white))
                    })
                }
                .padding(.bottom)
                
                Text("Training")
                    .foregroundColor(.white)
                    .font(.system(size: 34, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                
                if viewModel.trainings.isEmpty {
                    
                    VStack {
                        
                        Image(systemName: "figure.boxing")
                            .foregroundColor(Color("bg"))
                            .font(.system(size: 28, weight: .regular))
                            .padding(9)
                            .background(Circle().fill(.white))
                            .padding(.bottom)
                        
                        Text("Empty")
                            .foregroundColor(.white)
                            .font(.system(size: 28, weight: .semibold))
                        
                        Text("No entries")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                    }
                    .frame(maxHeight: .infinity)
                    
                } else {
                    
                    if viewModel.typeForFilter == "All"  {
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            
                            LazyVStack {
                                
                                ForEach(viewModel.trainings, id: \.self) { index in
                                    
                                    VStack(spacing: 14) {
                                        
                                        HStack {
                                            
                                            Text("Type")
                                                .foregroundColor(.white)
                                                .font(.system(size: 18, weight: .medium))
                                            
                                            Spacer()
                                            
                                            Menu(content: {
                                                
                                                Button(action: {
                                                    
                                                    viewModel.selectedTraining = index
                                                    
                                                    withAnimation(.spring()) {
                                                        
                                                        viewModel.isDelete = true
                                                    }
                                                    
                                                }, label: {
                                                    
                                                    HStack {
                                                        
                                                        Text("Delete")
                                                        
                                                        Spacer()
                                                        
                                                        Image(systemName: "trash.fill")
                                                            .foregroundColor(.black)
                                                    }
                                                })
                                                
                                            }, label: {
                                                
                                                Text("...")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 17, weight: .medium))
                                            })
                                        }
                                        
                                        HStack {
                                            
                                            Image(systemName: "clock.fill")
                                                .foregroundColor(.white)
                                                .font(.system(size: 14, weight: .regular))
                                            
                                            Text(index.trTime ?? "")
                                                .foregroundColor(.white)
                                                .font(.system(size: 15, weight: .regular))
                                            
                                            Spacer()
                                            
                                            Image(systemName: "figure.strengthtraining.traditional")
                                                .foregroundColor(.white)
                                                .font(.system(size: 14, weight: .regular))
                                            
                                            Text(index.trComp ?? "")
                                                .foregroundColor(.white)
                                                .font(.system(size: 15, weight: .regular))
                                            
                                            Spacer()
                                            
                                            Image(systemName: "figure.arms.open")
                                                .foregroundColor(.white)
                                                .font(.system(size: 14, weight: .regular))
                                            
                                            Text(index.trBP ?? "")
                                                .foregroundColor(.white)
                                                .font(.system(size: 15, weight: .regular))
                                        }
                                        
                                        HStack {
                                            
                                            Image(systemName: "scalemass.fill")
                                                .foregroundColor(.white)
                                                .font(.system(size: 14, weight: .regular))
                                            
                                            Text("Quantity")
                                                .foregroundColor(.white)
                                                .font(.system(size: 15, weight: .regular))
                                            
                                            Spacer()
                                            
                                            Text(index.trQuan ?? "")
                                                .foregroundColor(.white.opacity(0.4))
                                                .font(.system(size: 16, weight: .medium))
                                        }
                                        
                                        HStack {
                                            
                                            Image(systemName: "arrow.counterclockwise")
                                                .foregroundColor(.white)
                                                .font(.system(size: 14, weight: .regular))
                                            
                                            Text("Approaches")
                                                .foregroundColor(.white)
                                                .font(.system(size: 15, weight: .regular))
                                            
                                            Spacer()
                                            
                                            Text(index.trApp ?? "")
                                                .foregroundColor(.white.opacity(0.4))
                                                .font(.system(size: 16, weight: .medium))
                                        }
                                        
                                        HStack {
                                            
                                            Rectangle()
                                                .fill(Color("bg"))
                                                .frame(maxWidth: .infinity)
                                                .frame(height: 5)
                                            
                                            Text("\(0)%")
                                                .foregroundColor(.black)
                                                .font(.system(size: 14, weight: .regular))
                                            
                                            Button(action: {
                                                
                                                viewModel.selectedTraining = index
                                                
                                                withAnimation(.spring()) {
                                                    
                                                    viewModel.isDetail = true
                                                }
                                                
                                            }, label: {
                                                
                                                Image(systemName: "arrow.up.right")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 11, weight: .regular))
                                                    .padding(4)
                                                    .background(Circle().fill(Color("bg")))
                                                
                                            })
                                        }
                                        .padding()
                                        .background(RoundedRectangle(cornerRadius: 8).fill(.white))
                                    }
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                                }
                            }
                        }
                        
                    } else {
                        
                        if viewModel.trainings.filter({($0.trType ?? "") == viewModel.typeForFilter}).isEmpty {
                            
                            VStack {
                                
                                Image(systemName: "figure.boxing")
                                    .foregroundColor(Color("bg"))
                                    .font(.system(size: 28, weight: .regular))
                                    .padding(9)
                                    .background(Circle().fill(.white))
                                    .padding(.bottom)
                                
                                Text("Empty")
                                    .foregroundColor(.white)
                                    .font(.system(size: 28, weight: .semibold))
                                
                                Text("No entries")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                            }
                            .frame(maxHeight: .infinity)
                            
                        } else {
                            
                            ScrollView(.vertical, showsIndicators: false) {
                                
                                LazyVStack {
                                    
                                    ForEach(viewModel.trainings.filter({($0.trType ?? "") == viewModel.typeForFilter}), id: \.self) { index in
                                        
                                        VStack(spacing: 14) {
                                            
                                            HStack {
                                                
                                                Text("Type")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 18, weight: .medium))
                                                
                                                Spacer()
                                                
                                                Menu(content: {
                                                    
                                                    Button(action: {
                                                        
                                                        viewModel.selectedTraining = index
                                                        
                                                        withAnimation(.spring()) {
                                                            
                                                            viewModel.isDelete = true
                                                        }
                                                        
                                                    }, label: {
                                                        
                                                        HStack {
                                                            
                                                            Text("Delete")
                                                            
                                                            Spacer()
                                                            
                                                            Image(systemName: "trash.fill")
                                                                .foregroundColor(.black)
                                                        }
                                                    })
                                                    
                                                }, label: {
                                                    
                                                    Text("...")
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 17, weight: .medium))
                                                })
                                            }
                                            
                                            HStack {
                                                
                                                Image(systemName: "clock.fill")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 14, weight: .regular))
                                                
                                                Text(index.trTime ?? "")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 15, weight: .regular))
                                                
                                                Spacer()
                                                
                                                Image(systemName: "figure.strengthtraining.traditional")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 14, weight: .regular))
                                                
                                                Text(index.trComp ?? "")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 15, weight: .regular))
                                                
                                                Spacer()
                                                
                                                Image(systemName: "figure.arms.open")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 14, weight: .regular))
                                                
                                                Text(index.trBP ?? "")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 15, weight: .regular))
                                            }
                                            
                                            HStack {
                                                
                                                Image(systemName: "scalemass.fill")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 14, weight: .regular))
                                                
                                                Text("Quantity")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 15, weight: .regular))
                                                
                                                Spacer()
                                                
                                                Text(index.trQuan ?? "")
                                                    .foregroundColor(.white.opacity(0.4))
                                                    .font(.system(size: 16, weight: .medium))
                                            }
                                            
                                            HStack {
                                                
                                                Image(systemName: "arrow.counterclockwise")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 14, weight: .regular))
                                                
                                                Text("Approaches")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 15, weight: .regular))
                                                
                                                Spacer()
                                                
                                                Text(index.trApp ?? "")
                                                    .foregroundColor(.white.opacity(0.4))
                                                    .font(.system(size: 16, weight: .medium))
                                            }
                                            
                                            HStack {
                                                
                                                Rectangle()
                                                    .fill(Color("bg"))
                                                    .frame(maxWidth: .infinity)
                                                    .frame(height: 5)
                                                
                                                Text("\(0)%")
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 14, weight: .regular))
                                                
                                                Button(action: {
                                                    
                                                    viewModel.selectedTraining = index
                                                    
                                                    withAnimation(.spring()) {
                                                        
                                                        viewModel.isDetail = true
                                                    }
                                                    
                                                }, label: {
                                                    
                                                    Image(systemName: "arrow.up.right")
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 11, weight: .regular))
                                                        .padding(4)
                                                        .background(Circle().fill(Color("bg")))
                                                    
                                                })
                                            }
                                            .padding()
                                            .background(RoundedRectangle(cornerRadius: 8).fill(.white))
                                        }
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                                    }
                                }
                            }
                        }
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        
                        Button(action: {
                            
                            viewModel.typeForFilter = "All"
                            
                        }, label: {
                            
                            Text("All")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium))
                                .padding(.horizontal)
                                .frame(height: 45)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg3")))
                                .opacity(viewModel.typeForFilter == "All" ? 1 : 0.5)
                        })
                        
                        ForEach(viewModel.Types, id: \.self) { index in
                            
                            Button(action: {
                                
                                viewModel.typeForFilter = index
                                
                            }, label: {
                                
                                Text(index)
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                                    .padding(.horizontal)
                                    .frame(height: 45)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg3")))
                                    .opacity(viewModel.typeForFilter == index ? 1 : 0.5)
                            })
                        }
                    }
                }
            }
            .padding()
        }
        .onAppear {
            
            viewModel.fetchTrainings()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            AddTraining(viewModel: viewModel)
        })
        .overlay(
            
            ZStack {
                
                Color.black.opacity(viewModel.isDetail ? 0.8 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isDetail = false
                        }
                    }
                
                VStack {
                    
                    VStack(spacing: 20) {
                        
                        Text("Performing the workout")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .medium))
                            .multilineTextAlignment(.center)
                        
                        HStack {
                            
                            Image(systemName: "scalemass.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text(viewModel.selectedTraining?.trQuan ?? "")
                                .foregroundColor(.white)
                                .font(.system(size: 24, weight: .bold))
                            
                            Rectangle()
                                .fill(Color("bg"))
                                .frame(maxWidth: .infinity)
                                .frame(height: 4)
                            
                            Image(systemName: "arrow.counterclockwise")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text(viewModel.selectedTraining?.trApp ?? "")
                                .foregroundColor(.white)
                                .font(.system(size: 24, weight: .bold))
                        }
                        
                        Text("\(formattedTime)")
                            .foregroundColor(Color("bg"))
                            .font(.system(size: 32, weight: .bold))
                                                    
                            GeometryReader { reader in
                                                                    
                                    let result = CGFloat((CGFloat(viewModel.remainingTime) * reader.size.width)) / CGFloat(900)
                                    
                                    ZStack(alignment: .leading, content: {
                                        
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(.gray.opacity(0.2))
                                            .frame(width: reader.size.width, height: 3)
                                        
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color("bg"))
                                            .frame(width: result, height: 3)
                                    })
                            }
                            .frame(height: 10)
                         
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 20).fill(.white.opacity(0.8)))
                    
                        VStack {
                            
                            if !viewModel.isRunning || viewModel.remainingTime == 0 {
                                
                                Button(action: {
                                    
                                    viewModel.start()
                                    
                                }, label: {
                                    
                                    Text("Start")
                                        .foregroundColor(.black)
                                        .font(.system(size: 20, weight: .semibold))
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 60)
                                        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.7)))
                                })
                                
                            } else {
                                
                                Button(action: {
                                    
                                    viewModel.finish()
                                                                        
                                    withAnimation(.spring()) {
                                        
                                        viewModel.isDetail = false
                                    }
                                    
                                }, label: {
                                    
                                    Text("Finish")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .semibold))
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 60)
                                        .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg")))
                                })
                                .disabled(viewModel.remainingTime == 0)

                            }
                            
                            Button(action: {
                                
                                viewModel.stop()
                                
                            }, label: {
                                
                                Text("Stop")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20, weight: .semibold))
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 60)
                                    .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg")))
                            })
                            .disabled(!viewModel.isRunning)
                            
                            Button(action: {
                                
                                withAnimation(.spring()) {
                                    
                                    viewModel.isDetail = false
                                }
                                
                            }, label: {
                                
                                Text("Cancel")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .regular))
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 60)
                                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.7)))

                            })
                        }

                }
                .padding()
                .offset(y: viewModel.isDetail ? 0 : UIScreen.main.bounds.height)
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
        )
        .overlay(
            
            ZStack {
                
                Color.black.opacity(viewModel.isDelete ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isDelete = false
                        }
                    }
                
                VStack {
                    
                    VStack {
                        
                        HStack {
                            
                            Spacer()
                            
                            Button(action: {
                                
                                withAnimation(.spring()) {
                                    
                                    viewModel.isDelete = false
                                }
                                
                            }, label: {
                                
                                Image(systemName: "xmark")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .regular))
                            })
                        }
                        
                        Text("Are you sure you want to delete?")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .regular))
                            .multilineTextAlignment(.center)
                        
                        Button(action: {
                            
                            CoreDataStack.shared.deleteTraining(withTrTime: viewModel.selectedTraining?.trTime ?? "", completion: {
                                
                                viewModel.fetchTrainings()
                            })
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isDelete = false
                                
                            }
                            
                        }, label: {
                            
                            Text("Delete")
                                .foregroundColor(.black)
                                .font(.system(size: 18, weight: .semibold))
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                            
                        })
                        .padding(.top, 25)
                    }             
                    .frame(maxWidth: .infinity)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isDelete = false
                        }
                        
                    }, label: {
                        
                        Text("Cancel")
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .regular))
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
                        
                    })
                    
                }
                .padding()
                .offset(y: viewModel.isDelete ? 0 : UIScreen.main.bounds.height)
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
        )
    }
    
    private var formattedTime: String {
        let minutes = viewModel.remainingTime / 60
        let seconds = viewModel.remainingTime % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

#Preview {
    TrainingView(mainModel: TrackerViewModel())
}
