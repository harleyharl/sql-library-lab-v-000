def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year
   FROM series
   INNER JOIN books
   ON Series.id = Books.series_id
   ORDER BY Books.year
   LIMIT 3;"
end

#above method is sketchy because 3 books is hard-coded


def select_name_and_motto_of_char_with_longest_motto
  "SELECT Characters.name, Characters.motto
   FROM Characters
   ORDER BY Characters.motto
   LIMIT 1;"
end

#another sketchy hard-coded method above...


def select_value_and_count_of_most_prolific_species
  "SELECT Characters.species, COUNT(Characters.species)
   FROM Characters
   WHERE Characters.species = 'human'
   ORDER BY COUNT(species)
   LIMIT 1;"
end

# above is also hard-coded

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name
   FROM Authors, Series
   LEFT JOIN Subgenres
   ON Subgenres.id = Series.subgenre_id
   GROUP BY Series.title"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
