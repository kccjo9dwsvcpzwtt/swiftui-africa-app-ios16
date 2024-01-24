//
//  AnimalDetailView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-10.
//

import SwiftUI

struct AnimalDetailView: View {
  
  //MARK: - PROPERTIES
  
  let animal: AnimalList
  
  //MARK: - BODY
  
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
        
        //MARK: - HERO IMAGE
        
        Image(animal.image)
          .resizable()
          .scaledToFit()
        
        //MARK: - TITLE
        
        Text(animal.name.uppercased())
          .font(.largeTitle)
          .fontWeight(.heavy)
          .multilineTextAlignment(.center)
          .padding(.vertical, 8)
          .foregroundStyle(.primary)
          .background(
            Color.accent
              .frame(height: 6)
              .offset(y: 24)
          )
        
        //MARK: - HEADLINE
        
        Text(animal.headline)
          .font(.headline)
          .multilineTextAlignment(.leading)
          .foregroundStyle(.accent)
          .padding(.horizontal)
        
        //MARK: - GALLERY
        
        Group {
          HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures.")
          InsetGalleryView(animal: animal)
        } //: GROUP
        .padding(.horizontal)
        
        //MARK: - FACTS
        
        Group {
          
        } //: GROUP
        .padding(.horizontal)
        
        //MARK: - DESCRIPTION
        
        //MARK: - MAP
        
        //MARK: - LINK
        
      } //: VSTACK
      .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
    } //: SCROLL VIEW
  }
}

//MARK: - PREVIEW


struct AnimalDetailView_Preview: PreviewProvider {
  static var animals: [AnimalList] = Bundle.main.decode("animals.json")
  static var previews: some View {
    NavigationStack {
      AnimalDetailView(animal: animals[0])
    }
  }
}

