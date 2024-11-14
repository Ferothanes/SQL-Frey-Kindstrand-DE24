SELECT * FROM funny_jokes;

-- shows the jokes
-- now when we ctrl enter this line of code, the list is updated. 

SELECT * FROM funny_jokes WHERE id = 7;

-- select joke nr 7

UPDATE funny_jokes SET rating = 10 WHERE id = 7;

-- update joke nr.7 so that the rating is 10


