//
//  SettingsView.swift
//  Hike
//
//  Created by shivakumar ponnuraj on 03/12/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            //MARK: - SECTION: HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName:"laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editor's Choice")
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }//: HSTACK
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find\n perfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk .")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }//: VSTACK
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)

            }//: HEADER
            .listRowSeparator(.hidden)
            
            //MARK: - SECTION: ICONS
            
            //MARK: - SECTION: ABOUT
            
            Section (
            header: Text("About this App"),
            footer: HStack {
                Spacer()
                Text("Copyright © All rights reserved")
                Spacer()
            }
                .padding(.vertical, 8)
            ) {
                // Advanced label content
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Shiva Kumar", rowTintColor: .mint)
                
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                
//                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowContent: "https://shiva-kumar.com", rowTintColor: .indigo)
                
            }//: SECTION
        }//: LIST
    }
}

#Preview {
    SettingsView()
}
