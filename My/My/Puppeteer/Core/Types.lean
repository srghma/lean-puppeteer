namespace My.Puppeteer.Core
structure Viewport where
  width : Nat
  height : Nat
  deviceScaleFactor : Float := 1.0
  isMobile : Bool := false
  hasTouch : Bool := false
  isLandscape : Bool := false
structure ConnectOptions where
  browserWSEndpoint : Option String := none
  browserURL : Option String := none
  ignoreHTTPSErrors : Bool := false
  defaultViewport : Option Viewport := none
end My.Puppeteer.Core
