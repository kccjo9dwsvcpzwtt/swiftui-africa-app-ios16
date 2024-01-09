//
//  MainView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-09.
//

import SwiftUI

struct MainView: View {
  
  //MARK: - PROPERTIES
  
  //MARK: - BODY
  
  var body: some View {
    TabView {
      ContentView()
        .tabItem {
          Image(systemName: "square.grid.2x2")
          Text("Browse")
        }
      VideoListView()
        .tabItem {
          Image(systemName: "play.rectangle")
          Text("Watch")
        }
      MapView()
        .tabItem {
          Image(systemName: "map")
          Text("Locations")
        }
      GalleryView()
        .tabItem {
          Image(systemName: "photo")
          Text("Gallegy")
        }
    } //: TAB VIEW
  }
}

//MARK: - PREVIEW

#Preview {
  MainView()
}
