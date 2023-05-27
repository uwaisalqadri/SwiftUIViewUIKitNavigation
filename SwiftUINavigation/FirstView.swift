//
//  FirstView.swift
//  SwiftUINavigation
//
//  Created by Uwais Alqadri on 27/5/23.
//

import SwiftUI

struct FirstView: ViewControllable {
  
  var holder: NavStackHolder
  
  var body: some View {
    VStack(spacing: 30) {
      Button(action: {
        navigateToSecondView()
      }) {
        Text("FirstView: Push")
      }
      
      Button(action: {
        presentSecondView()
      }) {
        Text("FirstView: Present")
      }
      
      Button(action: {
        fullScreenSecondView()
      }) {
        Text("FirstView: Full Screen")
      }
    }
  }
  
  func navigateToSecondView() {
    guard let viewController = holder.viewController else { return }
    let view = SecondView(holder: NavStackHolder())
    viewController.navigationController?.pushViewController(view.viewController, animated: true)
  }
  
  func presentSecondView() {
    guard let viewController = holder.viewController else { return }
    let view = SecondView(holder: NavStackHolder())
    viewController.present(view.viewController, animated: true)
  }
  
  func fullScreenSecondView() {
    guard let viewController = holder.viewController else { return }
    let view = SecondView(holder: NavStackHolder())
    let nextViewController = view.viewController
    nextViewController.modalPresentationStyle = .fullScreen
    nextViewController.modalTransitionStyle = .crossDissolve
    viewController.present(nextViewController, animated: true)
  }
}
