-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

-- Create new tables, according to your domain model
-- TODO!

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

-- Prints a header for the movies output


-- The SQL statement for the movies output
-- TODO!

-- Prints a header for the cast output



-- The SQL statement for the cast output
-- TODO!
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS top_cast;

CREATE TABLE movies (
id INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT,
year TEXT,
director TEXT,
rating TEXT
);

CREATE TABLE top_cast (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
role TEXT,
movie_id INTEGER
)
;

INSERT INTO movies (
id,
title,
year,
director,
rating
)
VALUES (
NULL,
"Batman Begins",
"2005",
"Christopher Nolan",
"PG-13"
);

INSERT INTO movies (
id,
title,
year,
director,
rating
)
VALUES (
NULL,
"The Dark Knight",
"2008",
"Christopher Nolan",
"PG-13"
);

INSERT INTO movies (
id,
title,
year,
director,
rating
)
VALUES (
NULL,
"The Dark Knight Rises",
"2012",
"Christopher Nolan",
"PG-13"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Christian Bale",
"Batman",
"1"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Christian Bale",
"Batman",
"2"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Christian Bale",
"Batman",
"3"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Michael Caine",
"Alfred",
"1"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Michael Caine",
"Alfred",
"2"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Michael Caine",
"Alfred",
"3"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Gary Oldman",
"Gordon",
"1"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Gary Oldman",
"Gordon",
"2"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Gary Oldman",
"Gordon",
"3"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Liam Neeson",
"Ras AL Ghul",
"1"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Katie Holmes",
"Rachel Dawes",
"1"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Heath Ledger",
"Joker",
"2"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Aaron Eckhart",
"Harvey Dent/Two Face",
"2"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Maggie Gyllenhaal",
"Rachel Dawes",
"2"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Tom Hardy",
"Bane",
"3"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Joseph-Gordon Levitt",
"John Blake",
"3"
);

INSERT INTO top_cast (
id,
name,
role,
movie_id
)
VALUES (
NULL,
"Anne Hathaway",
"Selina Kyle/Catwoman",
"3"
);

.print "Movies"
.print "======"
.print ""
SELECT id, title, year, director, rating FROM movies;
.print ""
.print "Top Cast"
.print "========"
.print ""
SELECT movies.title, top_cast.name, top_cast.role FROM top_cast
INNER JOIN movies ON movies.id=top_cast.movie_id;