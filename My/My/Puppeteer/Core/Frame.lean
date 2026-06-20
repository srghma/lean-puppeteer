import My.Puppeteer.Core.EventEmitter
namespace My.Puppeteer.Core
structure Frame where
  id : String
  parentFrame : Option String := none
def Frame.url (_self : Frame) : String := "about:blank"
end My.Puppeteer.Core
