import karax/kdom
import dom_utils
import ui_units

import store
import widget_main

proc run(unit: Unit) =
  echo "Mounting main unit"
  unit.activate()
  let node = unit.domNode
  let root = document.getElementById("ROOT")
  root.appendChild(node)
  unit.setFocus()

let s = newStore()

let ui = UiContext()
let mainWidget = ui.widgetMain(s)
run(mainWidget)
