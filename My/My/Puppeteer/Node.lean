import My.Puppeteer.Core.EventEmitter
import My.Puppeteer.Core.Types
import My.Puppeteer.Core.Browser
namespace My.Puppeteer
structure PuppeteerNode where
  isPuppeteerCore : Bool
  ee : My.Puppeteer.Core.EventEmitter := My.Puppeteer.Core.EventEmitter.empty
def PuppeteerNode.launch (_self : PuppeteerNode) : IO My.Puppeteer.Core.Browser := do
  IO.println "Launching browser (mock)..."
  return { ee := My.Puppeteer.Core.EventEmitter.empty, isClosed := false, contexts := [{ id := "default" }] }
end My.Puppeteer
