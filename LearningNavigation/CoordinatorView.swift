//
//  CoordinatorView.swift
//  LearningNavigation
//
//  Created by Muhamad Fardan Wardhana on 07/11/23.
//

import SwiftUI

struct CoordinatorView: View {
  @StateObject var coordinator = Coordinator()
    var body: some View {
      NavigationStack(path: $coordinator.path) {
        coordinator.build(.apple)
          .navigationDestination(for: Page.self) { page in
            coordinator.build(page)
          }
          .sheet(item: $coordinator.sheet) { sheet in
            coordinator.build(sheet)
          }
          .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
            coordinator.build(fullScreenCover)
          }
      }
      .environmentObject(coordinator)
    }
}

struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView()
    }
}
