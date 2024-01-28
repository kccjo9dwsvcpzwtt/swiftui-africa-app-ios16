//
//  VideoListItemView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-25.
//

import SwiftUI

struct VideoListItemView: View {
  
  //MARK: - PROPERTIES
  
  let video: VideoList
  
  //MARK: - BODY
  
  var body: some View {
    HStack(spacing: 10) {
      ZStack {
        Image(video.thumbnail)
          .resizable()
          .scaledToFit()
          .frame(height: 80)
          .cornerRadius(9)
        
        Image(systemName: "play.circle")
          .resizable()
          .scaledToFit()
          .frame(height: 32)
          .shadow(radius: 4)
      } //: ZSTACK
      
      VStack(alignment: .leading, spacing: 10) {
        Text(video.name)
          .font(.title2)
          .fontWeight(.heavy)
          .foregroundStyle(.accent)
        Text(video.headline)
          .font(.footnote)
          .multilineTextAlignment(.leading)
          .lineLimit(2)
      } //: VSTACK
    } //: HSTACK
  }
}

//MARK: - PREVIEW

struct VideoListItemView_Preview: PreviewProvider {
  static let videos: [VideoList] = Bundle.main.decode("videos.json")
  static var previews: some View {
    VideoListItemView(video: videos[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
