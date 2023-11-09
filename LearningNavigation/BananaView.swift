//
//  BananaView.swift
//  LearningNavigation
//
//  Created by Muhamad Fardan Wardhana on 06/11/23.
//

import SwiftUI

struct BananaView: View {
  @EnvironmentObject var coordinator: Coordinator
  
  var body: some View {
    List {
      Button("Push 🥕") {
        coordinator.push(.carrot)
      }
      
      Button("Pop") {
        coordinator.pop()
      }
    }
    .navigationTitle("🍌")
  }
}

struct BananaView_Previews: PreviewProvider {
  static var previews: some View {
    BananaView()
  }
}
