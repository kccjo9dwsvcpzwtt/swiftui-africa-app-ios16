//
//  InsetMapView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-25.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
  
  //MARK: - PROPERTIES
  
  @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
  
  //MARK: - BODY
  
  var body: some View {
    Map(coordinateRegion: $region)
      .overlay(
        NavigationLink(destination: MapView()) {
          HStack {
            Image(systemName: "mappin.circle")
              .foregroundStyle(.white)
              .imageScale(.large)
            Text("Locations")
              .foregroundStyle(.accent)
              .fontWeight(.bold)
          } //: HSTACK
          .padding(.vertical, 10)
          .padding(.horizontal, 14)
          .background(
            Color.black
              .opacity(0.4)
              .cornerRadius(8)
          )
        } //: NAVIGATION
          .padding(12)
        , alignment: .topTrailing
      )
      .frame(height: 256)
      .cornerRadius(12)
  }
}

//MARK: - PREVIEW

struct InsetMapView_Preview: PreviewProvider {
  static var previews: some View {
    InsetMapView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
