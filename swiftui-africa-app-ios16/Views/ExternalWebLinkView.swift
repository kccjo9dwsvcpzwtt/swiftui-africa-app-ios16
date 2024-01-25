//
//  ExternalWebLinkView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-25.
//

import SwiftUI

struct ExternalWebLinkView: View {
  
  //MARK: - PROPERTIES
  
  let animal: AnimalList
  
  //MARK: - BODY
  
  var body: some View {
    GroupBox {
      HStack {
        Image(systemName: "globe")
        Text("Wikipedia")
        Spacer()
        Group {
          Image(systemName: "arrow.up.right.square")
          Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
        } //: GROUP
        .foregroundStyle(.accent)
      } //: HSTACK
    } //: GROUP BOX
  }
}

//MARK: - PREVIEW

struct ExternalWebLinkView_Preview: PreviewProvider {
  static var animals: [AnimalList] = Bundle.main.decode("animals.json")
  static var previews: some View {
    ExternalWebLinkView(animal: animals[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
