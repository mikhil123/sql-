(select Concat(Name,concat('(' ,concat(Substr(Occupation,1,1) ,')') )) as Na
    from OCCUPATIONS)
    Union all
(select concat ('There are a total of ',concat(count(*) ,concat (' ',concat(lower(Occupation),'s.') ))) as Na
    from OCCUPATIONS
    group by Occupation)
    order by Na
    ;
