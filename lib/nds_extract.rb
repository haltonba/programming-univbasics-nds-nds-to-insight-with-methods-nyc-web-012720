$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  movie_counter = 0
  gross = 0
  while movie_counter < director_data[:movies].length do
    gross += director_data[:movies][movie_counter][:worldwide_gross]
    movie_counter += 1  
  end
  gross
end

def directors_totals(nds)
  result = {}
  director_counter = 0
  while director_counter < nds.length do
    director_name = nds[director_counter][:name]
    result[director_name] = gross_for_director(nds[director_counter])
    director_counter += 1
  end
  result
end
