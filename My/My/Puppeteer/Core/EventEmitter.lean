namespace My.Puppeteer.Core
structure EventEmitter where
  handlers : List (String × (Unit -> IO Unit)) := []
def EventEmitter.empty : EventEmitter := { handlers := [] }
def EventEmitter.on (self : EventEmitter) (name : String) (handler : Unit -> IO Unit) : EventEmitter :=
  { self with handlers := (name, handler) :: self.handlers }
def EventEmitter.emit (self : EventEmitter) (name : String) : IO Unit := do
  for (hName, handler) in self.handlers do
    if hName == name then
      handler ()
end My.Puppeteer.Core
