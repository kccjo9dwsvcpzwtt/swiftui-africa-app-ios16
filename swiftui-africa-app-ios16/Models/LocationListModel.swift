//
//  LocationListModel.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-02-02.
//

import Foundation
import MapKit

struct LocationList: Codable, Identifiable {
  
  //MARK: - PROPERTIES
  
  var id: String
  var name: String
  var image: String
  var latitude: Double
  var longitude: Double
  
  //MARK: - COMPUTED PROPERTIES
  
  var location: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
  }
}
