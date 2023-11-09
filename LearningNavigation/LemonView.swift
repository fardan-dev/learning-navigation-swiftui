//
//  LemonView.swift
//  LearningNavigation
//
//  Created by Muhamad Fardan Wardhana on 06/11/23.
//

import SwiftUI

struct LemonView: View {
  @EnvironmentObject var groupView: GroupView
  
  var body: some View {
    NavigationView {
      List {
        Button("Dismiss") {
          groupView.showLemon = false
        }
      }
      .navigationTitle("🍋")
    }
  }
}

struct LemonView_Previews: PreviewProvider {
  static var previews: some View {
    LemonView()
  }
}
