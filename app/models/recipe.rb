class Recipe
  DB = PG.connect({:host=>"", :port => 5432, :dbname => 'rails_react_recipe_development'})

    def self.all
        results = DB.exec("SELECT * FROM recipes;")
        return results.each do |result|
            {
                "id" => result["recipe_id"].to_i,
                "name" => result["name"],
                "ingredients" => result["ingredients"],
                "instructions" => result["instructions"],
                "img_url" => result["img_url"]
            }
        end
    end

    def self.find(id)
        results = DB.exec("SELECT * FROM recipes WHERE id=#{id};")
        return {
            "id" => results.first["id"].to_i,
            "name" => results.first["name"],
            "ingredients" => results.first["ingredients"],
            "instructions" => results.first["instructions"],
            "img_url" => results.first["img_url"],
        }
    end

  def self.create(opts)
    results = DB.exec(
        <<-SQL
            INSERT INTO recipes (name, ingredients, instructions, img_url)
            VALUES ( '#{opts["name"]}', '#{opts["ingredients"]}', '#{opts["instructions"]}', '#{opts["img_url"]}')
            RETURNING id, name, ingredients, instructions, img_url;
        SQL
    )
    return {
        "id" => results.first["id"].to_i,
        "name" => results.first["name"],
        "ingredients" => results.first["ingredients"],
        "instructions" => results.first["instructions"],
        "img_url" => results.first["img_url"],
    }
  end

  def self.delete(id)
    results = DB.exec("DELETE FROM recipes WHERE id=#{id};")
    return { "deleted" => true }
  end

  def self.update(id, opts)
    results = DB.exec(
        <<-SQL
            UPDATE recipes
            SET name='#{opts["name"]}', ingredients='#{opts["ingredients"]}', instructions='#{opts["instructions"]}', img_url='#{opts["img_url"]}'
            WHERE id=#{id}
            RETURNING id, name, ingredients, instructions, img_url;
        SQL
    )
    return {
        "id" => results.first["id"].to_i,
        "name" => results.first["name"],
        "ingredients" => results.first["ingredients"],
        "instructions" => results.first["instructions"],
        "img_url" => results.first["img_url"],
    }
  end
end
