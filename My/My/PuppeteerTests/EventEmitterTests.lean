import My.Puppeteer.Core.EventEmitter
namespace My.PuppeteerTests.EventEmitterTests
def test : IO Unit := do
  let ee := My.Puppeteer.Core.EventEmitter.empty
  let ee := ee.on "test" (fun _ => IO.println "Event fired!")
  ee.emit "test"
end My.PuppeteerTests.EventEmitterTests
