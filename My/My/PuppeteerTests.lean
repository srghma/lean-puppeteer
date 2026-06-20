import My.PuppeteerTests.EventEmitterTests
import My.PuppeteerTests.MainTests
def main : IO Unit := do
  IO.println "Running all tests..."
  My.PuppeteerTests.EventEmitterTests.test
  My.PuppeteerTests.MainTests.test
