DECLARE @COUNTER AS INT;
SET @COUNTER = 1

WHILE @COUNTER <=10
BEGIN
PRINT @COUNTER;
SET @COUNTER = @COUNTER + 1;
END;

//RESULT
1
2
3
4
5
6
7
8
9
10


DECLARE @COUNTER AS INT;
SET @COUNTER = 1

WHILE @COUNTER <=10
BEGIN
  IF @COUNTER = 6
  BREAK;
PRINT @COUNTER;
SET @COUNTER = @COUNTER + 1;
END;

//RESULT 

1
2
3
4
5
BREAK
