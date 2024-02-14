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
  let haptics = UIImpactFeedbackGenerator(style: .medium)
  
  @State private var isGridViewActive: Bool = false
  
  // BASIC GRID
  
  //  let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
  
  @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
  @State private var gridColumn: Int = 1
  @State private var toolBarIcon: String = "square.grid.2x2"
  
  //MARK: - FUNCTIONS
  
  func gridSwitch() {
    gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
    gridColumn = gridLayout.count
    
    print("Grid number: \(gridColumn)")
    
    // TOOLBAR IMAGE
    
    switch gridColumn {
      case 1:
        toolBarIcon = "square.grid.2x2"
      case 2:
        toolBarIcon = "square.grid.3x2"
      case 3:
        toolBarIcon = "rectangle.grid.1x2"
      default:
        toolBarIcon = "square.grid.2x2"
    }
  }
  
  //MARK: - BODY
  
  var body: some View {
    NavigationStack {
      
      Group {
        if !isGridViewActive {
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
        } else {
          ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
              ForEach(animals) { animal in
                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                  AnimalGreedItemView(animal: animal)
                } //: LINK
              } //: LOOP
            } //: GRID
            .padding(10)
            .animation(.easeIn)
          } //: SCROLL
        } //: CONDITION
      } //: GROUP
      .navigationBarTitle("Africa", displayMode: .large)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          HStack(spacing: 16) {
            
            // LIST
            
            Button(action: {
              print("List view is activated")
              isGridViewActive = false
              haptics.impactOccurred()
            }) {
              Image(systemName: "square.fill.text.grid.1x2")
                .font(.title2)
                .foregroundColor(isGridViewActive ? .primary : .accentColor)
            }
            
            // GRID
            
            Button(action: {
              print("Grid view is activated")
              isGridViewActive = true
              haptics.impactOccurred()
              gridSwitch()
            }) {
              Image(systemName: toolBarIcon)
                .font(.title2)
                .foregroundColor(isGridViewActive ? .accentColor : .primary)
            }
            
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
