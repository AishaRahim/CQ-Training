const employees = [
    {
    "FirstName": "John",
    "LastName": "Doe",
    "Age": 20,
    "Department": "Computer Science"
     },
     {
    "FirstName": "Jane",
    "LastName": "Smith",
    "Age": 22,
    "Department": "Physics"
     },
     {
    "FirstName": "Michael",
    "LastName": "Johnson",
    "Age": 21, 
    "Department": "Mathematics"
     },
    {
    "FirstName": "Sarah",
    "LastName": "Williams",
    "Age": 19,
    "Department": "Computer Science"
    },
    {
    "FirstName": "Robert",
    "LastName": "Brown",
    "Age": 23,
    "Department": "Mathematics"
    },
    {
    "FirstName": "Emily",
    "LastName": "Davis",
    "Age": 20,
    "Department": "Computer Science"
    }    
];

const cs = employees.filter((x) => x.Department === "Computer Science");
console.log(cs);
