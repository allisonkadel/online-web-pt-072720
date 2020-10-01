# TO BUILD:
# instance method that saves the cat object to the database
# class method that instantiates a cat and saves the cat
# class method that takes in a db row and creates a cat instance
# class method that takes in a cat attribute, finds a cat with that attribute in the db, and returns an instance

class Cat
    attr_accessor :name, :age, :id

    def initialize(name, age, id=nil)
        @id = id
        @name = name
        @age = age
    end

    def save
        if self.id
            "record already saved"
        else
            sql = <<-SQL
                INSERT INTO cats (name, age)
                VALUES (?, ?)
            SQL

            DB[:conn].execute(sql, self.name, self.age)
            self.id = DB[:conn].execute('SELECT last_insert_rowid() FROM cats')[0][0]
            self
        end
    end

    def self.create(name, age, id=nil) # for next time
        self.new(name, age, id).save
    end

    def self.find_or_create_by(name, age) # for next time
        sql = <<-SQL
            SELECT * FROM cats WHERE name = ? AND age = ?
        SQL
        cat_result = DB[:conn].execute(sql, name, age)[0]
        binding.pry
        if !cat_result.nil?
            Cat.new(cat_result["name"], cat_result["age"], cat_result["id"])
        else
            self.create(name, age) 
        end
    end

end