-- Exact match (case-insensitive)
SELECT title, artist, version FROM maps WHERE artist = 'camellia';

-- Partial match — catches "かめりあ", "camellia as fluX Xroise" etc.
SELECT title, artist, version FROM maps WHERE artist LIKE '%camellia%';

-- Multiple artists at once
SELECT title, artist FROM maps WHERE artist LIKE '%camellia%' OR artist LIKE '%xi%';

-- Exact title
SELECT * FROM maps WHERE title = 'Disorder';

-- Partial — useful if you only remember part of the name
SELECT title, artist FROM maps WHERE title LIKE '%ghost%';

-- Case insensitive partial (SQLite LIKE is case-insensitive for ASCII by default)
SELECT title, artist FROM maps WHERE title LIKE '%killer%';

-- Between two values
SELECT title, artist, bpm FROM maps WHERE bpm BETWEEN 180 AND 200;

-- Minimum BPM only
SELECT title, artist, bpm FROM maps WHERE bpm >= 250;

-- Maximum BPM only
SELECT title, artist, bpm FROM maps WHERE bpm <= 130;

-- Exact BPM
SELECT title, artist, bpm FROM maps WHERE bpm = 200;    

-- At least 6 minutes drain time
SELECT title, artist, drain_time FROM maps WHERE drain_time >= 6;

-- At least 7 minutes, ordered longest first
SELECT title, artist, drain_time FROM maps 
WHERE drain_time >= 7 
ORDER BY drain_time DESC;

-- Single owner — works even when they share a map
SELECT title, artist, difficulty_owner FROM maps 
WHERE difficulty_owner LIKE '%Genjuro%';

-- Find all maps with exactly one owner (no comma in the field)
SELECT title, artist, difficulty_owner FROM maps 
WHERE difficulty_owner NOT LIKE '%,%';

-- Find all maps with multiple owners (comma present)
SELECT title, artist, difficulty_owner FROM maps 
WHERE difficulty_owner LIKE '%,%';

-- Find maps owned by EITHER of two people (solo or shared)
SELECT title, artist, difficulty_owner FROM maps 
WHERE difficulty_owner LIKE '%Genjuro%' 
   OR difficulty_owner LIKE '%Skid%';

-- Find maps owned by BOTH people together (collaborative maps only)
SELECT title, artist, difficulty_owner FROM maps 
WHERE difficulty_owner LIKE '%Genjuro%' 
  AND difficulty_owner LIKE '%Dusk-%';

  -- High SR maps with fast BPM
SELECT title, artist, sr, bpm FROM maps 
WHERE sr > 7 AND bpm > 200 
ORDER BY sr DESC;

-- Maps by a specific owner within a BPM range
SELECT title, artist, bpm, difficulty_owner FROM maps 
WHERE difficulty_owner LIKE '%7_7%' 
  AND bpm BETWEEN 200 AND 300;

-- Long drain time AND high OD
SELECT title, artist, drain_time, od FROM maps 
WHERE drain_time >= 6 AND od >= 7 
ORDER BY od DESC;

-- Search by tournament name (the key column)
SELECT title, artist, key FROM maps 
WHERE key LIKE '3 Digit Taiko World Cup%';

-- See all unique difficulty owners (including combined ones)
SELECT DISTINCT difficulty_owner FROM maps ORDER BY difficulty_owner;

-- Count maps per BPM value
SELECT bpm, COUNT(*) as map_count FROM maps 
GROUP BY bpm ORDER BY map_count DESC;

-- Find the hardest maps by SR
SELECT title, artist, sr FROM maps 
ORDER BY sr DESC LIMIT 10;

-- Find a map by its ID
SELECT * FROM maps WHERE map_id = 2547552;

-- Find all maps tagged as vocaloid
SELECT title, artist, tags FROM maps WHERE tags LIKE '%vocaloid%';

-- Find maps related to a specific game (e.g. Sound Voltex)
SELECT title, artist, tags FROM maps WHERE tags LIKE '%sdvx%';

-- Find maps tagged as breakcore
SELECT title, artist, tags FROM maps WHERE tags LIKE '%breakcore%';

-- Multiple tag search — maps that are BOTH electronic AND instrumental
SELECT title, artist, tags FROM maps 
WHERE tags LIKE '%electronic%' AND tags LIKE '%instrumental%';

-- Multiple tag search — maps tagged with EITHER touhou OR vocaloid
SELECT title, artist, tags FROM maps 
WHERE tags LIKE '%touhou%' OR tags LIKE '%vocaloid%';

-- Combine tags with another field — featured artist maps with fast BPM
SELECT title, artist, bpm, tags FROM maps 
WHERE tags LIKE '%featured artist%' AND bpm >= 200;

-- Case where a game/series has multiple tag aliases
SELECT title, artist, tags FROM maps 
WHERE tags LIKE '%sdvx%' OR tags LIKE '%sound voltex%';