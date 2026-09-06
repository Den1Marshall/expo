import SwiftUI
import ExpoModulesCore

struct ContextMenuWithPreview<ActivationElement: View, Preview: View, MenuContent: View>: View {
  let activationElement: ActivationElement
  let preview: Preview
  let menuContent: MenuContent

  var body: some View {
    activationElement.contextMenu(menuItems: {
      menuContent
    }, preview: {
      preview
    })
  }
}

internal struct LongPressContextMenu<ActivationElement: View, MenuContent: View>: View {
  let activationElement: ActivationElement
  let menuContent: MenuContent

  var body: some View {
    activationElement.contextMenu(menuItems: {
      menuContent
    })
  }
}

struct ContextMenu: ExpoSwiftUI.View {
  @ObservedObject var props: ContextMenuProps

  var body: some View {
    let activationElement = props.children?.slot("trigger")
    let menuContent = props.children?.slot("items")
    let preview = props.children?.slot("preview")

    if let activationElement {
      if let preview {
        ContextMenuWithPreview(
          activationElement: activationElement,
          preview: preview,
          menuContent: menuContent
        )
      } else {
        LongPressContextMenu(
          activationElement: activationElement,
          menuContent: menuContent
        )
      }
    }
  }
}
