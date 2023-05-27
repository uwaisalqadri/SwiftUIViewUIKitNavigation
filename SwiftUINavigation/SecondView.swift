//
//  SecondView.swift
//  SwiftUINavigation
//
//  Created by Uwais Alqadri on 27/5/23.
//

import SwiftUI

struct SecondView: ViewControllable {
  var holder: NavStackHolder
  
  var body: some View {
    Button(action: {
      holder.viewController?.dismiss(animated: true)
    }) {
      Text("SecondView: Tapped")
    }
  }
}
