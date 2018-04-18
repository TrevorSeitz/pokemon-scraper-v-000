class Pokemon

    @@all = []

    attr_accessor :id, :name, :type, :db

    def initialize(id)
      @id = id
      @name = id[:name]
      @type = @id[:type]
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
      "SELECT * FROM db WHERE id = ?"
      Pokemon.new(id)
    end


end
