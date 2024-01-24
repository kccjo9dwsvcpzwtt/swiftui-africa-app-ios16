//
//  CodableBundleExtention.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-09.
//

import Foundation

extension Bundle {
  func decode<T: Codable>(_ file: String) -> T {
    
    //MARK: - 1. Locate JSON File
    
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Error to locate JSON file \(file) in bundle.")
    }
    
    //MARK: - 2. Create a PROPERTY for the DATA
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load JSON file \(file) from bundle.")
    }
    
    //MARK: - 3. Create DECODER
    
    let decoder = JSONDecoder()
    
    //MARK: - 4. Create a PROPERTY for the DECODED DATA
    
    guard let loaded = try? decoder.decode(T.self, from: data) else {
      fatalError("Failed to decode JSON file \(file) from bundle.")
    }
    
    //MARK: - 5. Return "READY-TO-USE" DATA
    
    return loaded
  }
}
