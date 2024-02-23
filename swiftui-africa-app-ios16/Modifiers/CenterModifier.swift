//
//  CenterModifier.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-02-22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    } //: HSTACK
  }
}
