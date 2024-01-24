//
//  AnimalListItemView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-10.
//

import SwiftUI

struct AnimalListItemView: View {
  
  //MARK: - PROPERTIES
  
  let animal: AnimalList
  
  //MARK: - BODY
  
  var body: some View {
    HStack(alignment: .center, spacing: 16) {
      Image(animal.image)
        .resizable()
        .scaledToFill()
        .frame(width: 90, height: 90)
        .clipShape(RoundedRectangle(cornerRadius: 12))
      
//      Spacer()
      
      VStack(alignment: .leading, spacing: 8) {
        Text(animal.name)
          .font(.title2)
          .fontWeight(.heavy)
          .foregroundStyle(.accent)
        Text(animal.headline)
          .font(.footnote)
          .multilineTextAlignment(.leading)
          .lineLimit(2)
          .padding(.trailing)
      } //: VSTACK
    } //: HSTACK
  }
}

//MARK: - PREVIEW

struct AnimalListItemView_Preview: PreviewProvider {
  static var animals: [AnimalList] = Bundle.main.decode("animals.json")
  static var previews: some View {
    AnimalListItemView(animal: animals[0])
  }
}
