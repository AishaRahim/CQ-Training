--display string having '%'
SELECT * FROM Employee WHERE EName LIKE '%[%]%'

--Display all records who’s name starts with John
SELECT * FROM Employee WHERE EName LIKE 'John%'

--Display all records who’s name ends with John
SELECT * FROM Employee WHERE EName like '%John'

--Display all records who’s name have John ( can be any where )
SELECT * FROM Employee WHERE EName like '%John%'

--Display all records who’s name starts with A and ends with n
SELECT * FROM Employee WHERE EName like 'A%n'

--Display all records who have alex or deo any where in name column
SELECT * FROM Employee WHERE EName like '%alex%deo%' or EName like '%deo%alex%'