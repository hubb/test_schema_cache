class FoobazRecord < ApplicationRecord
  self.abstract_class = true
  connects_to database: { writing: :foobaz, reading: :foobaz }
end
