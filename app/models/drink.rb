class Drink
  DB = PG.connect({:host=>"localhost", :port => 5432, :dbname => 'rails_react_recipe_development'})

  def self.all
      results = DB.exec("SELECT * FROM drinks;")
      return results.each do |result|
        {
          "id" => result["id"].to_i,
          "name" => result["name"],
          "ingredients" => result["ingredients"],
          "instructions" => result["instructions"],
          "img_url" => result["img_url"]
        }
      end
    end

  def self.find(id)
    results = DB.exec("SELECT * FROM drinks WHERE id=#{id};")
    return {
      "id" => results.first["id"].to_i,
      "name" => results.first["name"],
      "ingredients" => results.first["ingredients"],
      "instructions" => results.first["instructions"],
      "img_url" => results.first["img_url"]
    }
  end

  def self.create(opts)
    results = DB.exec(
        <<-SQL
            INSERT INTO drinks (name, ingredients, instructions, img_url)
            VALUES ( '#{opts["name"]}', '#{opts["ingredients"]}', '#{opts["instructions"]}', '#{opts["img_url"]}' )
            RETURNING id, name, ingredients, instructions, img_url;
        SQL
    )
    return {
        "id" => results.first["id"].to_i,
        "name" => results.first["name"],
        "ingredients" => results.first["ingredients"],
        "instructions" => results.first["instructions"],
        "img_url" => results.first["img_url"]
    }
  end

  def self.delete(id)
    results = DB.exec("DELETE FROM drinks WHERE id=#{id};")
    return { "deleted" => true }
  end

  def self.update(id, opts)
    results = DB.exec(
        <<-SQL
            UPDATE drinks
            SET name='#{opts["name"]}', ingredients='#{opts["ingredients"]}', instructions='#{opts["instructions"]}', img_url='#{opts["img_url"]}'
            WHERE id=#{id}
            RETURNING id, name,ingredients, instructions, img_url ;
        SQL
    )
    return {
        "id" => results.first["id"].to_i,
        "name" => results.first["name"],
        "ingredients" => results.first["ingredients"],
        "instructions" => results.first["instructions"],
        "img_url" => results.first["img_url"]
    }
  end
end
