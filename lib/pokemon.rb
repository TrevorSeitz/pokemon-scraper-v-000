class Pokemon
    attr_accessor :id, :name, :type, :hp, :db

    def self.save(name, type, db)
      db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
    end

    def self.find(id, db)
      db.execute("SELECT * FROM pokemon WHERE id=?", id).first
    end

    def initialize(id)
      @id = id
      @name = name
      @type = type
      @db = db
    end



end
