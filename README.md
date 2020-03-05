# SQL:
<B>Generate the following two result sets:</B>

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
