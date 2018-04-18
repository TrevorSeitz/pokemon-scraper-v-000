class Pokemon
    attr_accessor :id, :name, :type, :hp, :db

    def self.save(name, type, db)
      db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
    end

    def self.find(id, db)
      found = db.execute("SELECT * FROM pokemon WHERE id=?", id).first
      binding.pry
      Pokemon.new(found[0][0], found[0][1], found[0][2])
    end

    def initialize(id, name, type)
      @id = id
      @name = name
      @type = type
      @db = db
    end



end
