class Recipe
  DB = PG.connect({:host=>"localhost", :port => 5432, :dbname => 'rails_react_recipe_development'})

  def self.all
      results = DB.exec(<<-SQL
        SELECT
            recipes.*,
            drinks.name,
            drinks.ingredients,
            drinks.instructions,
            drinks.img_url
        FROM recipes
        LEFT JOIN drinks
            ON recipes.recipe_id = drinks.id
        ORDER BY recipes.id ASC
    SQL
    )
      return results.each do |result|
        if result ["recipe_id"]
            recipe = {
                    "id" => result["recipe_id"].to_i,
                    "name" => result["name"],
                    "ingredients" => result["ingredients"],
                    "instructions" => result["instructions"],
                    "img_url" => result["img_url"]
                }
      end
        {
            "id" => result["id"].to_i,
            "name" => result["name"],
            "ingredients" => result["ingredients"],
            "instructions" => result["instructions"],
            "img_url" => result["img_url"],
            "recipe" => recipe
        }
    end
end

  def self.find(id)
    # results = DB.exec("SELECT * FROM recipes WHERE id=#{id};")
    results = DB.exec(<<-SQL
        SELECT
            recipes.*,
            drinks.name,
            drinks.ingredients,
            drinks.instructions,
            drinks.img_url
        FROM recipes
        LEFT JOIN drinks
            ON recipes.recipe_id = drinks.id
        WHERE recipes.id = #{id};
    SQL
    )
    result = results.first
    if result ["recipe_id"]
            recipe = {
                    "id" => result["recipe_id"].to_i,
                    "name" => result["name"],
                    "ingredients" => result["ingredients"],
                    "instructions" => result["instructions"],
                    "img_url" => result["img_url"],
                }
    end

    return {

        "id" => result["id"].to_i,
        "name" => result["name"],
        "ingredients" => result["ingredients"],
        "instructions" => result["instructions"],
        "img_url" => result["img_url"],
        "recipe" => recipe,
    }
end

  def self.create(opts)
    results = DB.exec(
        <<-SQL
            INSERT INTO recipes (name, ingredients, instructions, img_url)
            VALUES ( '#{opts["name"]}', '#{opts["ingredients"]}', '#{opts["instructions"]}', '#{opts["img_url"]}', #{opts["recipe_id"] ? opts["recipe_id"] : "NULL"})
            RETURNING id, name, ingredients, instructions, img_url, recipe_id;
        SQL
    )
    return {
        "id" => results.first["id"].to_i,
        "name" => results.first["name"],
        "ingredients" => results.first["ingredients"],
        "instructions" => results.first["instructions"],
        "img_url" => results.first["img_url"],
        "recipe_id" => results.first["recipe_id"].to_i
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
            SET
            name='#{opts["name"]}',
            ingredients='#{opts["ingredients"]}',
            instructions='#{opts["instructions"]}',
            img_url='#{opts["img_url"]}',
            recipe_id=#{opts["recipe_id"] ? opts["recipe_id"] : NULL }
            WHERE id=#{id}
            RETURNING id, name,ingredients, instructions, img_url, recipe_id ;
        SQL
    )
    return {
        "id" => results.first["id"].to_i,
        "name" => results.first["name"],
        "ingredients" => results.first["ingredients"],
        "instructions" => results.first["instructions"],
        "img_url" => results.first["img_url"],
        "recipe_id" => results.first["recipe_id"].to_i
    }
  end
end
