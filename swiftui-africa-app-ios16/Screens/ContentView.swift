//
//  ContentView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-08.
//

import SwiftUI

struct ContentView: View {
  
  //MARK: - PROPERTIES
  
  let animals: [AnimalList] = Bundle.main.decode("animals.json")
  
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
        
        ForEach(animals) { animal in
          
          NavigationLink(destination: AnimalDetailView(animal: animal)) {
            AnimalListItemView(animal: animal)
          } //: LINK
          
          /*
            .listRowBackground(Color.clear)    need if use scaledToFit parameter in CoverImageView
          */
        }
        
      } //: LIST
      .navigationBarTitle("Africa", displayMode: .large)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          HStack(spacing: 16) {
            
          } //: HSTACK
        } //: BUTTONS
      } //: TOOLBAR
    } //: NAVIGATION STACK
  }
}

//MARK: - PREVIEW

#Preview {
  ContentView()
}
