//
//  CarrotView.swift
//  LearningNavigation
//
//  Created by Muhamad Fardan Wardhana on 06/11/23.
//

import SwiftUI

struct CarrotView: View {
  @EnvironmentObject var coordinator: Coordinator
  
  var body: some View {
    List {
      Button("Pop") {
        coordinator.pop()
      }
      
      Button("Pop to Root") {
        coordinator.popToRoot()
      }
    }
    .navigationTitle("🥕")
  }
}

struct CarrotView_Previews: PreviewProvider {
  static var previews: some View {
    CarrotView()
  }
}
