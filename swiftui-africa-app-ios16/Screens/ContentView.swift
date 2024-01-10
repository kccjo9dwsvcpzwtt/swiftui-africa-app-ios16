//
//  ContentView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-08.
//

import SwiftUI

struct ContentView: View {
  
  //MARK: - PROPERTIES
  
  //MARK: - BODY
  
  var body: some View {
    NavigationStack {
      List {
        CoverImageView()
          .frame(height: 300)
          .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        
        /*
          .listRowBackground(Color.clear)    need if use scaledToFit parameter in CoverImageView
        */
        
      } //: LIST
      .navigationBarTitle("Africa", displayMode: .large)
    } //: NAVIGATION STACK
  }
}

//MARK: - PREVIEW

#Preview {
  ContentView()
}
