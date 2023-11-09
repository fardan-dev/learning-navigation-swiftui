//
//  Coordinator.swift
//  LearningNavigation
//
//  Created by Muhamad Fardan Wardhana on 07/11/23.
//

import SwiftUI

enum Page: String, Identifiable {
  case apple, banana, carrot
  
  var id: String {
    self.rawValue
  }
}

enum Sheet: String, Identifiable {
  case lemon
  
  var id: String {
    self.rawValue
  }
}

enum FullScreenCover: String, Identifiable {
  case olive
  
  var id: String {
    self.rawValue
  }
}

class Coordinator: ObservableObject {
  @Published var path: NavigationPath = NavigationPath()
  @Published var sheet: Sheet?
  @Published var fullScreenCover: FullScreenCover?
  
  func push(_ page: Page) {
    path.append(page)
  }
  
  func present(sheet: Sheet) {
    self.sheet = sheet
  }
  
  func present(fullScreenCover: FullScreenCover) {
    self.fullScreenCover = fullScreenCover
  }
  
  func pop() {
    path.removeLast()
  }
  
  func popToRoot() {
    path.removeLast(path.count)
  }
  
  func dismissSheet() {
    sheet = nil
  }
  
  func dismissFullScreenCover() {
    fullScreenCover = nil
  }
  
  @ViewBuilder
  func build(_ page: Page) -> some View {
    switch page {
    case .apple:
      AppleView()
    case .banana:
      BananaView()
    case .carrot:
      CarrotView()
    }
  }
  
  @ViewBuilder
  func build(_ sheet: Sheet) -> some View {
    switch sheet {
    case .lemon:
      LemonView()
    }
  }
  
  @ViewBuilder
  func build(_ fullScreenCover: FullScreenCover) -> some View {
    switch fullScreenCover {
    case .olive:
      OliveView()
    }
  }
}
