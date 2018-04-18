class Pokemon

    @@all = []

    attr_accessor :id, :name, :type, :db

    def initialize(id)
      binding.pry
      @id = id
      @name = name
      @type = type
      @db = db
      # binding.pry
      @@all << self
    end

    def self.all
      @@all
    end

    def self.save(name,type, db)
      db.execute("INSERT INTO pokemon (name,type) VALUES (?, ?)",name, type)
    end

    def self.find(id_num, db)
      db.execute("SELECT * FROM pokemon WHERE id = ?", id_num).first
    end


end
