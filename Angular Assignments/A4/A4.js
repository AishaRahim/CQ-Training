function Display()
{
    const students = 
    [
        {
            "ID" : 1 ,
            "Name" : "Hari"
        } ,
        {
            "ID" : 2 ,
            "Name" : "Narayanan"
        } ,
        {
            "ID" : 3 ,
            "Name" : "Ruby"
        },
        {
            "ID" : 4 ,
            "Name" : "Jubiya"
        }
    ]

    console.log(students);
    let names = " ";
    students.forEach(x => 
        {
            names = (names === " " ? x.Name : `${names}, ${x.Name}`);
        });
    console.log("Using For Loop: ",names);
    
    const namesStr = students.reduce((rName, student) => {
        return rName === "" ? student.Name : `${rName}, ${student.Name}`;
    },"");
    
    console.log("Using Reduce: ", namesStr);
}
