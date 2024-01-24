//
//  InsetGalleryView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-24.
//

import SwiftUI

struct InsetGalleryView: View {
  
  //MARK: - PROPERTIES
  
  let animal: AnimalList
  
  //MARK: - BODY
  
  var body: some View {
    
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(alignment: .center, spacing: 15) {
        ForEach(animal.gallery, id: \.self) { item in
          Image(item)
            .resizable()
            .scaledToFit()
            .frame(height: 200)
          .cornerRadius(12)
        } //: LOOP
      } //: HSTACK
    } //: SCROLL VIEW
  }
}

//MARK: - PREVIEW

struct InsetGalleryView_Preview: PreviewProvider {
  static var animals: [AnimalList] = Bundle.main.decode("animals.json")
  static var previews: some View {
    InsetGalleryView(animal: animals[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
