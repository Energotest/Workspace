import XMonad
import XMonad.Config
import XMonad.Layout.NoBorders

myLayout = tiled ||| Mirror tiled ||| noBorders Full
  where
     -- default tiling algorithm partitions the screen into two panes
     tiled   = Tall nmaster delta ratio

     -- The default number of windows in the master pane
     nmaster = 1

     -- Default proportion of screen occupied by master pane
     ratio   = 1/2

     -- Percent of screen to increment by when resizing panes
     delta   = 3/100

main = xmonad def { layoutHook = myLayout, modMask = mod4Mask, focusedBorderColor = "#666666", normalBorderColor = "#333333" }


