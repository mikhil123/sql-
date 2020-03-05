# SQL:
<B> 1.Generate the following two result sets:</B>

<p>1.Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).</p><br>
<p>2.Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order.</p>

<p><B>ANS:</B></p>

` 
(select Concat(Name,concat('(' ,concat(Substr(Occupation,1,1) ,')') )) as Na`<br>`
    from OCCUPATIONS)`<br>`
    Union all`<br>`
(select concat ('There are a total of ',concat(count(*) ,concat (' ',concat(lower(Occupation),'s.') ))) as Na`<br>`
    from OCCUPATIONS`<br>`
    group by Occupation)`<br>`
    order by Na`<br>`
    ;`


<B>2.Top Competitors:</B>
<p>Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.</p>

<p><B>ANS:</B></p>

`
SELECT h.hacker_id, h.name `<br>`
FROM Submissions s JOIN Hackers  h `<br>` 
ON (s.hacker_id = h.hacker_id)`<br>`
                                JOIN Challenges  c ON (s.challenge_id = c.challenge_id)`<br>`
                                JOIN Difficulty  d ON (c.difficulty_level = d.difficulty_level)`<br>`
WHERE s.score = d.score GROUP BY h.hacker_id, h.name HAVING COUNT(*)>1 ORDER BY COUNT(*) DESC, h.hacker_id;`<br>`
`
