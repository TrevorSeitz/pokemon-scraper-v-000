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

    def self.save(id, name,type, db)
      db.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?, ?)", id, name, type)
    end

    def self.find(id, db)
      sql = <<-SQL
        SELECT * FROM db WHERE id = ?
      -- # Pokemon.new(id)
      SQL

      results = db[id].execute(sql, id)
    end


end
