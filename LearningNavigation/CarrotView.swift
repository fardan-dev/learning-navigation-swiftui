//
//  CarrotView.swift
//  LearningNavigation
//
//  Created by Muhamad Fardan Wardhana on 06/11/23.
//

import SwiftUI

struct CarrotView: View {
  @EnvironmentObject var groupView: GroupView
  
  var body: some View {
    List {
      Button("Pop") {
        groupView.showCarrot = false
      }
      
      Button("Pop to Root") {
        groupView.defaultValue()
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
