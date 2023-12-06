//
//  CustomListRowView.swift
//  Hike
//
//  Created by shivakumar ponnuraj on 03/12/2023.
//

import SwiftUI

struct CustomListRowView: View {
    @State  var rowLabel:String
    @State  var rowIcon:String
    @State  var rowContent:String
    @State  var rowTintColor: Color
    
    var body: some View {
        HStack {
            LabeledContent {
                Text(rowContent)
                    .foregroundColor(.black)
                    .fontWeight(.heavy)
            } label: {
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 30, height: 30)
                            .foregroundColor(rowTintColor)
                        Image(systemName: rowIcon)
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    }
                    Text(rowLabel)
                }
        }
        }
    }
}

#Preview {
    List {
        CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Shiva", rowTintColor: .pink)
    }
}
