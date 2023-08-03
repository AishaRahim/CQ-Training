function Movie()
{
    const movies=
    [
    {
      "MovieName": "The Great Adventure",
      "ActorName": "John Smith",
      "ReleaseDate": "2023-01-15"
    },
    {
      "MovieName": "Mystery in the Woods",
      "ActorName": "Emily Johnson",
      "ReleaseDate": "2022-09-28"
    },
    {
      "MovieName": "Love and Destiny",
      "ActorName": "Michael Brown",
      "ReleaseDate": "2023-05-02"
    },
    {
      "MovieName": "City of Shadows",
      "ActorName": "Sophia Williams",
      "ReleaseDate": "2023-03-12"
    },
    {
      "MovieName": "The Last Stand",
      "ActorName": "William Davis",
      "ReleaseDate": "2022-11-07"
    },
    {
      "MovieName": "Echoes of Time",
      "ActorName": "Olivia Wilson",
      "ReleaseDate": "2022-12-19"
    }
]

console.log(movies);
// 1)List the movie name along with the actor name of those movies released in the year 2022
const year2022 = movies.filter(x =>  
  {
    const movieYear = new Date(x.ReleaseDate);
    return movieYear.getFullYear() === 2022;
  }).map(x => ({ MovieName: x.MovieName, ActorName: x.ActorName }));
console.log("1) List the movie name along with the actor name of those movies released in the year 2022 ",year2022);

// 2)List the movie names released in the year 2023 where the actor is William Davis.
const year2023 = movies.filter(x => x.ReleaseDate.startsWith('2023') && x.ActorName==="William Davis").map(x => x.MovieName);
console.log("2) List the movie names released in the year 2023 where the actor is William Davis ",year2023);

// 3)Retrieve the Actor name and release date of the movie “The Last Stand”
const movieLastStand = movies.find(x => x.MovieName==="The Last Stand");
console.log("3) Actor name and release date of the movie The Last Stand ",movieLastStand);

// 4)Check whether there is any movie in the list with actor name “John Doe”
const anymovie = movies.some(x => x.ActorName==="John Doe");
console.log("4) Is any movie in the list with actor name John Doe: ",anymovie);

// 5)Display the count of movies where the actor name is "Sophia Williams"
const countOfMovies = movies.filter(x => x.ActorName==="Sophia Williams");
console.log("5) Display the count of movies where the actor name is Sophia Williams: ",countOfMovies.length);

// 6)Insert an element
// 		{
//    			 "MovieName": "The Final Stage",
//     			"ActorName": "John Doe",
//    	 		"ReleaseDate": "2022-08-11"
//  		 }
// 	as last element

const insertElement = movies.push({
    "MovieName": "The Final Stage",
    "ActorName": "John Doe",
    "ReleaseDate": "2022-08-11"
});
console.log("6) Updated array is : ",movies);
console.log("Inserted element is: ",insertElement);

// 7)Check whether there exists any duplicate movie names present in the array
const duplicate = movies.some((x,index) =>
{
  return movies.some((y,innerindex) =>
  {
    return index!==innerindex && x.MovieName === y.MovieName;
  });
});
console.log("7) Check whether there exists any duplicate movie names present in the array: ",duplicate);

// 8)Create a new array starting from the movie "City of Shadows"
const indx = movies.findIndex(x =>x.MovieName==="City of Shadows");
if(indx > -1)
{
  const NewArray = movies.slice(indx);
  console.log("8) Create a new array starting from the movie City of Shadows",NewArray);  
}

// 9)List the distinct actor names in array
let ActorList = [];
movies.forEach(x => x.ActorName)
{
  const actor = movies.ActorName;
  if(!ActorList.includes(actor))
  {
    ActorList.push(actor);
  }
}
const distinctActors = ActorList.map(actor => ({ActorName : actor}));
console.log("9) List the distinct actor names in array",distinctActors);

// 10)Insert an element
// 		{
//    			 "MovieName": "Rich & Poor",
//     			"ActorName": "Johnie Walker",
//    	 		"ReleaseDate": "2023-08-11"
//  		 }
// 	as next element to movie “Love and Destiny”
const newMovie = {
  "MovieName": "Rich & Poor",
  "ActorName": "Johnie Walker",
  "ReleaseDate": "2023-08-11"
};
const po = movies.findIndex(x => x.MovieName==="Love and Destiny");
if(po > -1)
{
  movies.splice(po+1,0,newMovie);
  console.log("10) After inserting an element: ",movies);  
}

// 11)Display the count of distinct actor names in array
console.log("11) Count of distinct actor names in array: ",distinctActors.length);

// 12)Remove the movie named  "The Last Stand"
const test = [...movies];
const pos = test.findIndex(x => x.MovieName==="The Last Stand");
if(pos > -1)
{
  test.splice(pos,1);
  console.log("12) After removing the movie named The Last Stand: ",test);
}

// 13)Check whether all the movies are released after 2021 Dec 31
const rel = movies.every(x => new Date ( x.ReleaseDate) > new Date("2021-12-31"));
console.log("13) Check whether all the movies are released after 2021 Dec 31: ",rel);

//14) Update movie named  "City of Shadows" ‘s release date as  "2023-03-13"
const temp = [...movies];
const flag = temp.findIndex(x => x.MovieName==="City of Shadows");
if(flag > -1)
{
  temp[flag].ReleaseDate="2023-03-13";
  console.log("14) Movie update succesfully.After updating movie date: ", temp);
}

// 15)Create a new array of movie names whose movie name length is greater than 10.
const NewArray3 = movies.filter(x => x.MovieName.length>10).map(x => x.MovieName);
console.log("15) New array of movie names whose movie name length is greater than 10:",NewArray3);
}