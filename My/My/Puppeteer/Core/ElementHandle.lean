import My.Puppeteer.Core.JSHandle
namespace My.Puppeteer.Core
structure ElementHandle extends JSHandle where
  tagName : String
def ElementHandle.click (self : ElementHandle) : IO Unit := do
  IO.println s!"Clicking on {self.tagName}..."
end My.Puppeteer.Core
