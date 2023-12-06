//
//  CustomeCircleView.swift
//  Hike
//
//  Created by shivakumar ponnuraj on 02/12/2023.
//

import SwiftUI

struct CustomeCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors:
                            [.customIndigoMedium,
                             .customSalmonLight
                            ],
                        startPoint:
                            isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint:
                            isAnimateGradient ? .bottomTrailing : .topTrailing)
                )
                .onAppear(perform: {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }
                })
            MotionAnimationView()
        }//: ZSTACK
        .frame(width: 256, height: 256)
    }
}

if #available(iOS 17, *) {
    #Preview {
        CustomeCircleView()
    }
}

