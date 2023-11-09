//
//  OliveView.swift
//  LearningNavigation
//
//  Created by Muhamad Fardan Wardhana on 06/11/23.
//

import SwiftUI

struct OliveView: View {
  @EnvironmentObject var coordinator: Coordinator
  
  var body: some View {
    List {
      Button("Dismiss") {
        coordinator.dismissFullScreenCover()
      }
    }
    .navigationTitle("🫒")
  }
}

struct OliveView_Previews: PreviewProvider {
  static var previews: some View {
    OliveView()
  }
}
