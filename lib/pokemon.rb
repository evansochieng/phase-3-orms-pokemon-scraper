class Pokemon
    #macros
    attr_accessor :id, :name, :type, :db
    #initialize instance
    def initialize(id:, name:, type:, db:)
        @id = id
        @name = name
        @type = type
        @db = db
    end

    #save method
    def self.save(name, type, db)
        #write insert statement
        sql = <<-SQL
          INSERT INTO pokemon (name, type) VALUES (?, ?)
        SQL

        #execute insert(save) statement - save record to database
        db.execute(sql, name, type)
    end

    #find method
    def self.find(id, db)
        #write select query statement to return record matching id
        sql = <<-SQL
          SELECT * FROM pokemon WHERE id = ?;
        SQL

        #execute query
        query_result =db.execute(sql, id)

        #create a POkemon object
        self.new(id: query_result.first.first, name: query_result.first[1], type: query_result.first.last, db: db)
    end
end
