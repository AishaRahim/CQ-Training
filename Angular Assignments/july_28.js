function display()
{
const students = [
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

    // List the students whose department is Computer Science
    const cs = students.filter(x => x.Department === "Computer Science");
    console.log("Students in Computer Science Department:", cs);

    // List the first names of students whose age is greater than 21
    const std21 = students.filter(x => x.Age > 21).map(x => x.FirstName);
    console.log("First names of students above 21 years old:", std21);

    // Check whether a student with the first name "Robert" is present in the Computer Science Department
    const cs2 = students.some(x => x.FirstName === "Robert" && x.Department === "Computer Science");
    console.log("Is Robert in Computer Science Department?", cs2);

    // Check whether there is any student whose age is greater than 23 and is studying in the Maths department
    const mat = students.some(x => x.Age > 23 && x.Department === "Mathematics");
    console.log("Is there any student above 23 studying in Maths department?", mat);

    // Check whether all the students are above an age group of 18
    const allAbove18 = students.every(x => x.Age > 18);
    console.log("Are all the students above 18?", allAbove18);

    // assuming there is only one student with the name "John" print his department
    const johnStd = students.find(x => x.FirstName === "John");
    if (johnStd) {
    console.log("Department of student named John:", johnStd.Department);
    } else {
    console.log("Student with the name John not found.");
    }
}