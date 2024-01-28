//
//  VideoListModel.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-25.
//

import Foundation

struct VideoList: Codable, Identifiable {
  
  //MARK: - PROPERTIES
  
  let id: String
  let name: String
  let headline: String
  
  //MARK: - COMPUTED PROPERTIES
  
  var thumbnail: String {
    "video-\(id)"
  }
}
