import My.Puppeteer.Core.EventEmitter
namespace My.Puppeteer.Core
structure BrowserContext where
  id : String
structure Browser where
  ee : EventEmitter := EventEmitter.empty
  isClosed : Bool := false
  contexts : List BrowserContext := []
def Browser.close (self : Browser) : IO Browser := do
  IO.println "Closing browser..."
  return { self with isClosed := true }
def Browser.browserContexts (self : Browser) : List BrowserContext :=
  self.contexts
end My.Puppeteer.Core
