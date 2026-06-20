import My.Puppeteer
def main : IO Unit := do
  IO.println "Puppeteer Lean version"
  let browser ← My.Puppeteer.launch
  IO.println s!"Browser has {browser.browserContexts.length} contexts."
  let page ← My.Puppeteer.newPage browser
  let _ ← page.goto "https://example.com"
  let content ← page.content
  IO.println s!"Page content: {content}"
  let _ ← browser.close
