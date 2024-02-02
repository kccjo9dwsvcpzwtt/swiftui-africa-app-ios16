//
//  VideoPlayerHelper.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-28.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
  if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
    videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
    videoPlayer?.play()
  }
  
  return videoPlayer!
}
