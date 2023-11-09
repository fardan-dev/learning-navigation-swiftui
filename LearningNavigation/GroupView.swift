//
//  GroupView.swift
//  LearningNavigation
//
//  Created by Muhamad Fardan Wardhana on 07/11/23.
//

import SwiftUI

class GroupView: ObservableObject {
  @Published var showBanana: Bool = false
  @Published var showLemon: Bool = false
  @Published var showOlive: Bool = false
  @Published var showCarrot: Bool = false
  
  func defaultValue() {
    showBanana = false
    showLemon = false
    showOlive = false
    showCarrot = false
  }
}
