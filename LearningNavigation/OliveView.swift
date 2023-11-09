//
//  OliveView.swift
//  LearningNavigation
//
//  Created by Muhamad Fardan Wardhana on 06/11/23.
//

import SwiftUI

struct OliveView: View {
  @EnvironmentObject var groupView: GroupView
  
  var body: some View {
    NavigationView {
      List {
        Button("Dismiss") {
          groupView.showOlive = false
        }
      }
      .navigationTitle("🫒")
    }
  }
}

struct OliveView_Previews: PreviewProvider {
  static var previews: some View {
    OliveView()
  }
}
