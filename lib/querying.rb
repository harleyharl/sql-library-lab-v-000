def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year
   FROM series
   INNER JOIN books
   ON Series.id = Books.series_id
   GROUP BY Series.id"
end

#above method is sketchy because 3 books is hard-coded


def select_name_and_motto_of_char_with_longest_motto
  "SELECT Characters.name, Characters.motto
   FROM Characters
   ORDER BY LENGTH(Characters.motto)
   DESC LIMIT 1;"
end

#another sketchy hard-coded method above...


def select_value_and_count_of_most_prolific_species
  "SELECT Characters.species, COUNT(Characters.species)
   FROM Characters
   GROUP BY species
   ORDER BY COUNT(species)
   DESC LIMIT 1;"
end

# above is also hard-coded

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name
   FROM Authors
   LEFT JOIN Series
   ON Series.author_id = Authors.id
   JOIN Subgenres
   WHERE Subgenres.id = Series.subgenre_id
   GROUP BY Authors.name"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
