class DwhManager < DwhRecord
    self.abstract_class = true

  connects_to database: { mysql2: :animals, postgres: :animals_replica }

end
