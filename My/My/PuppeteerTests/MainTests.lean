import My.Puppeteer
namespace My.PuppeteerTests.MainTests
def test : IO Unit := do
  IO.println "Testing launch..."
  let browser ← My.Puppeteer.launch
  let page ← My.Puppeteer.newPage browser
  let _ ← page.goto "https://example.com"
  let _ ← browser.close
end My.PuppeteerTests.MainTests
