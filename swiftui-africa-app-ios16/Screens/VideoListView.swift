//
//  VideoListView.swift
//  swiftui-africa-app-ios16
//
//  Created by Stanislav Ponomarenko on 2024-01-08.
//

import SwiftUI

struct VideoListView: View {
  
  //MARK: - PROPERTIES
  
  @State var videos: [VideoList] = Bundle.main.decode("videos.json")
  
  let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
  
  //MARK: - BODY
  
  var body: some View {
    NavigationStack {
      List {
        ForEach(videos) { item in
          VideoListItemView(video: item)
            .padding(.vertical, 8)
        } //: LOOP
      } //: LIST
      .listStyle(InsetGroupedListStyle())
      .navigationBarTitle("Videos", displayMode: .inline)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button(action: {
            // SHUFFLE VIDEOS
            videos.shuffle()
            hapticImpact.impactOccurred()
          }) {
            Image(systemName: "arrow.2.squarepath")
          }
        }
      } //: TOOLBAR
    } //: NAVIGATION STACK
  }
}

//MARK: - PREVIEW

#Preview {
  VideoListView()
}
