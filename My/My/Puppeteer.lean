import My.Puppeteer.Node
import My.Puppeteer.Core.Browser
import My.Puppeteer.Core.Page
namespace My.Puppeteer
def puppeteer : PuppeteerNode := { isPuppeteerCore := false }
def launch := puppeteer.launch
def newPage (browser : My.Puppeteer.Core.Browser) : IO My.Puppeteer.Core.Page := do
  IO.println "Opening new page..."
  return { browser := browser }
end My.Puppeteer
