import My.Puppeteer.Core.EventEmitter
import My.Puppeteer.Core.Browser
namespace My.Puppeteer.Core
structure Page where
  ee : EventEmitter := EventEmitter.empty
  url : String := "about:blank"
  browser : Browser
def Page.goto (self : Page) (url : String) : IO Page := do
  IO.println s!"Navigating to {url}..."
  return { self with url := url }
def Page.content (self : Page) : IO String := do
  return s!"<html><body>Content of {self.url}</body></html>"
def Page.title (self : Page) : IO String := do
  return s!"Title of {self.url}"
end My.Puppeteer.Core
