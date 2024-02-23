//
//  CreditsView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-02-22.
//

import SwiftUI

struct CreditsView: View {
  
  
  //MARK: - PROPERTIES
  
  //MARK: - BODY
  
  var body: some View {
    VStack {
      Image("compass")
        .resizable()
        .scaledToFit()
        .frame(width: 128, height: 128)
      
      Text("""
            Copyright © Stanislav Ponomarenko
            All rights reserved
            Better Apps ♡ Less Code
           """)
      .font(.footnote)
      .multilineTextAlignment(.center)
    } //: VSTACK
    .padding()
    .opacity(0.4)
  }
}

//MARK: - PREVIEW

#Preview {
  CreditsView()
    .previewLayout(.sizeThatFits)
    .padding()
}
