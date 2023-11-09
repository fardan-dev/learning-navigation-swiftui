//
//  BananaView.swift
//  LearningNavigation
//
//  Created by Muhamad Fardan Wardhana on 06/11/23.
//

import SwiftUI

struct BananaView: View {
  @EnvironmentObject var groupView: GroupView
  
  var body: some View {
    VStack {
      List {
        Button("Push 🥕") {
          groupView.showCarrot = true
        }
        
        Button("Pop") {
          groupView.showBanana = false
        }
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
