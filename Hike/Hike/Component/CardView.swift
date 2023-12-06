//
//  CardView.swift
//  Hike
//
//  Created by shivakumar ponnuraj on 30/11/2023.
//

import SwiftUI

struct CardView: View {
    // MARK:- PROPERTIES
    @State private var randomNumber: Int = 1
    @State private var imageNumber: Int = 1
    @State private var isShowingSheet:Bool = false
    
    // MARK: - FUNCTIONS
    func randomImage() {
        repeat{
            randomNumber = Int.random(in: 1...5)
        } while imageNumber == randomNumber
        
        imageNumber = randomNumber

    }
    
    var body: some View {
        ZStack {
            CustomBackGroundView()
            
            VStack {
           // MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button(action: {
                            print("Button Tapped")
                            isShowingSheet.toggle()
                        }, label: {
                            CustomButtonView()
                        })
                        .sheet(isPresented: $isShowingSheet, content: {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        })
                    }
                    Text("Fun and enjoyable outdoor activity for freinds and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER END
                .padding(20)
            
            // MARK: - MAIN CONTENT
                
                ZStack {
                    CustomeCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
            // MARK: - FOOTER
                Button(action: {
                    randomImage()
                }, label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight, .customGreenMedium],
                                           startPoint: .top,
                                           endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                })
                .buttonStyle(GradientButton())
            }
        }
        .frame(width: 320,height: 570)
    }
}

#Preview {
    CardView()
}
