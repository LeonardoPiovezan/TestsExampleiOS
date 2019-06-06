//
//  Device.swift
//  TestsExamplesTests
//
//  Created by Leonardo Piovezan on 06/06/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import Foundation
import UIKit

enum Device {
  case iphone
  case iphonePlus
  case iphoneX
  case iphoneXS
  case iphoneXSMax
  case iphoneSE

  var size: CGSize {
    switch self {
    case .iphone:
      return CGSize(width: 375, height: 667)
    case .iphonePlus:
      return CGSize(width: 414, height: 736)
    case .iphoneX, .iphoneXS:
      return CGSize(width: 375, height: 812)
    case .iphoneSE:
      return CGSize(width: 320, height: 568)
    case .iphoneXSMax:
      return CGSize(width: 414, height: 896)
    }
  }

  var name: String {
    switch self {
    case .iphone:
      return "IPHONE 8"
    case .iphonePlus:
      return "IPHONE 8 PLUS"
    case.iphoneX:
      return "IPHONE X"
    case .iphoneSE:
      return "IPHONE SE"
    case .iphoneXS:
      return "IPHONE XS"
    case .iphoneXSMax:
      return "IPHONE XS MAX"
    }
  }

  static let all = [iphone, iphoneSE, iphonePlus, iphoneX,iphoneXS,iphoneXSMax]

  static let sizes = [iphone.name: iphone.size,
                      iphoneSE.name: iphoneSE.size,
                      iphonePlus.name: iphonePlus.size,
                      iphoneX.name: iphoneX.size,
                      iphoneXS.name: iphoneXS.size,
                      iphoneXSMax.name: iphoneXSMax.size]

}
