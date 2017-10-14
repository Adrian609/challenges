// Drew Andre - Launch Academy Ignition week #6 -- github-data
let data = require('./data');

// How many repositories does LaunchAcademy own?
totalRespositorySize = data.length;
console.log('there are a total of ' + totalRespositorySize + " repositories");

// Which repository has the largest size?
let max = 0;
let repo_name;
data.forEach(repo => {
  if(repo.size > max) { max = repo.size; repo_name = repo; }
} );
console.log('\'' + repo_name.name + '\'' + ' has the largest repository with ' + max + ' entries.');

// Which repository has the most watchers?
max = 0;
data.forEach(repo => {
  if(repo.watchers_count > max) { max = repo.watchers_count; }
} );
console.log('max repository watches count = ' + max);

// What is the most-recently created repository?
// What is the oldest repository?
let dates = [];
data.forEach(repo => {
  dates.push(repo.created_at);
} );
// uses an ISO date style - ISO8601 designed for lexicographical sort
dates.sort();
console.log('earliest date = ' + Date(dates[0]));
console.log('oldest creation date = ' + Date(dates[dates.length - 1]));

// Print out (to the console) the name and description for each repository.
data.forEach(repo => {
  if(repo.description != null) {
    console.log('Repo name: ' + repo.name + '\tDescription: ' + repo.description);
  } else {
    console.log('Repo name: ' + repo.name + '\tNo description available.');
  }
});
