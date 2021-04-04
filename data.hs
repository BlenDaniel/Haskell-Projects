type Day = Int 
type Month = Int 
type Year = Int
data Date = Date Day Month Year
 deriving (Show)

data Sex = Male | Female
 deriving (Show)

type Name = String 
type Salary = Double 
type Height = Double
type Manager = [String]
data Employeee = Employee Name Date Sex Salary Height Manager
              | Employer Name Date Sex Salary Height
 deriving (Show)

p1 = Employee "Ramesh" (Date 04 06 1995) Male 50000 177.78 ["Someone"]


m1 = Employer "Someone" (Date 01 01 1960) Female 300000 165.50

main = do
    print p1
    print m1
