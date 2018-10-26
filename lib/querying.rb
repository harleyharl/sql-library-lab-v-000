def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year
   FROM series
   INNER JOIN books
   ON Series.id = Books.series_id
   WHERE Series.id = 1
   ORDER BY Books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT Characters.name, Characters.motto
   FROM Characters
   ORDER BY LENGTH(Characters.motto)
   DESC LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT Characters.species, COUNT(Characters.species)
   FROM Characters
   GROUP BY species
   ORDER BY COUNT(species)
   DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name
   FROM Authors
   LEFT JOIN Series
   ON Series.author_id = Authors.id
   JOIN Subgenres
   WHERE Subgenres.id = Series.subgenre_id
   GROUP BY Authors.name"
end

# def select_series_title_with_most_human_characters
#   "SELECT Series.title
#    FROM Series
#    JOIN Characters
#    ON Series.id = Characters.series_id
#    WHERE Characters.species = 'human'
#    GROUP BY species
#    ORDER BY COUNT(species)
#    "
# end

def select_series_title_with_most_human_characters
  "SELECT Series.title
   FROM Series
   JOIN Characters
   ON Series.id = Characters.series_id
   WHERE Characters.species = 'human'
   ORDER BY COUNT
   "
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
