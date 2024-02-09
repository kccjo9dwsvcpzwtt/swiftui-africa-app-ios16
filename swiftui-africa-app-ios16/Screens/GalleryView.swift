//
//  GalleryView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-08.
//

import SwiftUI

struct GalleryView: View {
  
  //MARK: - PROPERTIES
  
  //MARK: - BODY
  
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      Text("Gallery")
    } //: SCROLL VIEW
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(MotionAnimationView())
  }
}

//MARK: - PREVIEW

#Preview {
  GalleryView()
}
