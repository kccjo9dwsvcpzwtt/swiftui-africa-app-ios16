//
//  VideoPlayerView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-28.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
  
  //MARK: - PROPERTIES
  
  var videoSelected: String
  var videoTitle: String
  
  //MARK: - BODY
  
  var body: some View {
    
    /*
    VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "cheetah", withExtension: "mp4")!))
    */
    
    VStack {
      VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
        // Text(videoTitle)
      } //: VIDEO PLAYER
      .overlay(
        Image("logo")
          .resizable()
          .scaledToFit()
          .frame(width: 32, height: 32)
          .padding(.top, 6)
          .padding(.horizontal, 8)
        , alignment: .topLeading
      )
    } //: VSTACK
    .accentColor(.accentColor)
    .navigationBarTitle(videoTitle, displayMode: .inline)
  }
}

//MARK: - PREVIEW

#Preview {
  NavigationStack {
    VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
  } //: NAVIGATION STACK
}
