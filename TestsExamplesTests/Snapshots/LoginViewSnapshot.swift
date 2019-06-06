//
//  LoginViewSnapshot.swift
//  TestsExamplesTests
//
//  Created by Leonardo Piovezan on 05/06/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import FBSnapshotTestCase

@testable import TestsExamples

final class LoginViewSnapshot: FBSnapshotTestCase {

  override func setUp() {
    super.setUp()
//    recordMode = true
  }

  func testLoginView() {
    let view = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginView") as! LoginViewController

    Device.all.forEach { device in
      view.view.frame.size = device.size
      FBSnapshotVerifyView(view.view, identifier: device.name)
    }
  }
}
