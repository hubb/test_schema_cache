class FoobarRecord < ApplicationRecord
  self.abstract_class = true
  connects_to database: { writing: :foobar, reading: :foobar }
end
