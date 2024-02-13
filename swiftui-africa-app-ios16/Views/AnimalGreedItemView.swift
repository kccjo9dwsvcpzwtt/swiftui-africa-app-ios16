//
//  AnimalGreedItemView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-02-12.
//

import SwiftUI

struct AnimalGreedItemView: View {
  
  //MARK: - PROPERTIES
  
  let animal: AnimalList
  
  //MARK: - BODY
  
  var body: some View {
    Image(animal.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
}

//MARK: - PREVIEW

struct AnimalGreedItemView_Preview: PreviewProvider {
  static var animals: [AnimalList] = Bundle.main.decode("animals.json")
  static var previews: some View {
    AnimalGreedItemView(animal: animals[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
