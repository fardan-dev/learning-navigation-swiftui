//
//  ContentView.swift
//  LearningNavigation
//
//  Created by Muhamad Fardan Wardhana on 06/11/23.
//

import SwiftUI

struct AppleView: View {
  @StateObject var groupView: GroupView = GroupView()
  
  var body: some View {
    NavigationView {
      VStack {
        List {
          Button("Push 🍌") {
            groupView.showBanana = true
          }
          
          Button("Present 🍋") {
            groupView.showLemon = true
          }
          
          Button("Full Present 🫒") {
            groupView.showOlive = true
          }
        }
        .navigationTitle("🍎")
        
        NavigationLink("", isActive: $groupView.showBanana) {
          ZStack {
            BananaView()
              .environmentObject(groupView)
            
            NavigationLink("", isActive: $groupView.showCarrot) {
              CarrotView()
                .environmentObject(groupView)
            }
          }
        }
      }
      .sheet(isPresented: $groupView.showLemon) {
        LemonView()
          .environmentObject(groupView)
      }
      .fullScreenCover(isPresented: $groupView.showOlive) {
        OliveView()
          .environmentObject(groupView)
      }
    }
  }
}

struct AppleView_Previews: PreviewProvider {
  static var previews: some View {
    AppleView()
  }
}
