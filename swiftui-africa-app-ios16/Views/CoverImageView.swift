//
//  CoverImageView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-09.
//

import SwiftUI

struct CoverImageView: View {
  
  //MARK: - PROPERTIES
  
  let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
  
  //MARK: - BODY
  
  var body: some View {
    TabView {
      ForEach(coverImages) { item in
        Image(item.name)
          .resizable()
          .scaledToFill()
      } //: FOR EACH LOOP
    } //: TAB VIEW
    .tabViewStyle(PageTabViewStyle())
  }
}

//MARK: - PREVIEW

#Preview {
  CoverImageView()
    .previewLayout(.fixed(width: 400, height: 300))
}
