--author Krasnenkov Roman K7-222
--Вариант 9
--Вычислить, какой предмет посещает больше всего студентов;

import Lab2

french' = "Франзузский язык"
discrete_mathematics' = "Дискретная математика"
programming' = "Программирование"
all_lessons' = "Все предметы посещаются одинаково"


compare1 x y z
	|(x==y) && (y==z) = all_lessons'
	|(x>=y) && (x>=z)= str1 x y z
 |(y>=x) && (y>=z) = str2 x y z
 |(z>=x) && (z>=y) = str3 x y z
 	
str1	x y z	
 		|(x==y) =french'++" и "++discrete_mathematics'
		 |(x==z) = french'++" и "++programming'
		 |otherwise = french'

str2	x y z	
 		|(y==x) =discrete_mathematics'++" и "++french'
		 |(y==z) = discrete_mathematics'++" и "++programming'
		 |otherwise = discrete_mathematics'

str3	x y z	
 		|(z==x) =programming'++" и "++french'
		 |(z==y) = programming'++" и "++discrete_mathematics'
		 |otherwise = programming'


compareLessons = compare1 (length french) (length discrete_mathematics) (length programming)



main = do
putStrLn $ "Студенты, изучающие французский:  " ++ ( show $ length french)
putStrLn $ "Студенты, изучающие дискретную математику:  " ++ ( show $ length discrete_mathematics)
putStrLn $ "Студенты, изучающие программирование:  " ++ ( show $ length programming)
putStrLn $ "Самый посещаемый предмет(ы):  " ++ compareLessons
