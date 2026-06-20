namespace My.Puppeteer.Core
structure JSHandle where
  id : String
def JSHandle.jsonValue (self : JSHandle) : IO String := do
  return s!"JSON value of {self.id}"
end My.Puppeteer.Core
