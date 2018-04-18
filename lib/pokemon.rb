class Pokemon

    @@all = []

    attr_accessor :id, :name, :type, :db

    def initialize(id)
      @id = id
      @name = name
      @type = type
      @db = db
      @@all << self
    end

    def self.all
      @@all
    end

    def self.save(name,type, db)
      db.execute("INSERT INTO pokemon (name,type) VALUES (?, ?)",name, type)
    end

    def self.find(id, db)
      bob = "SELECT * FROM db WHERE id = ?"
      # Pokemon.new(id)
      bob
    end


end
