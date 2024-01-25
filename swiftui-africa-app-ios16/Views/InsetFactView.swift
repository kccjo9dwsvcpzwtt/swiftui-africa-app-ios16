//
//  InsetFactView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-24.
//

import SwiftUI

struct InsetFactView: View {
  
  //MARK: - PROPERTIES
  
  let animal: AnimalList
  
  //MARK: - BODY
  
  var body: some View {
    GroupBox {
      TabView {
        ForEach(animal.fact, id: \.self) { item in
          Text(item)
        } //: LOOP
      } //: TAB VIEW
      .tabViewStyle(PageTabViewStyle())
      .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
    } //: GROUP BOX
  }
}

//MARK: - PREVIEW

struct InsetFactView_Preview: PreviewProvider {
  static var animals: [AnimalList] = Bundle.main.decode("animals.json")
  static var previews: some View {
    InsetFactView(animal: animals[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
