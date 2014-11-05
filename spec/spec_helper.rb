require "repeating_regexes"

RSpec.configure do |c|
  # Modules are used only to group the exercises. Including them in the RSpec
  # examples means the specs can call them directly.
  c.include(RepeatingRegexes)
end
