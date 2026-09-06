// Copyright 2015-present 650 Industries. All rights reserved.

import ExpoModulesCore
import SwiftUI

internal struct ScrollDisabledModifier: ViewModifier, Record {
  @Field var disabled: Bool = true

  func body(content: Content) -> some View {
    content.scrollDisabled(disabled)
  }
}
