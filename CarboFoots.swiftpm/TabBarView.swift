//
//  TabBarView.swift
//  CarboFoots
//
//  Created by Adii I on 26/02/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem() {
                    Image(systemName: "person.3")
                }
            HomeView()
                .tabItem() {
                    Image(systemName: "camera")
                }
            EarthSceneView()
                .scaledToFit()
                .padding(2)
                .tabItem() {
                    Image(systemName: "globe")
                }
        }
    }
}
