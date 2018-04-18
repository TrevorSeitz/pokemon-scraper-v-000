class Pokemon
    attr_accessor :id, :name, :type, :hp, :db

    def self.save(name, type, db)
      db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
    end

    def self.find(id, db)
      # binding.pry
      poke = db.execute("SELECT * FROM pokemon WHERE id=?", id).first
      # binding.pry
      Pokemon.new(poke[1], poke[2], poke[3], db)
    end

    def initialize(id, name, type, db)
      @id = id
      @name = name
      @type = type
      @db = db
    end



end
