var JustReact = {
  Rami: 88,
  Natoya: 92,
  Bill: 68,
  Susie: 100
};

var We_Are_Ruby = {
  Sasha: 82,
  Mohammed: 98,
  Jennifer: 94,
  Ken: 92
};

var groups = [JustReact, We_Are_Ruby];
var group_names = ["JustReact", "We Are Ruby"];

var number_of_groups = groups.length;

var group_sizes = [];
for (var j = 0; j < number_of_groups; j++) {
  var size = Object.keys(groups[j]).length;
  group_sizes.push(size);
}

var total_average = 0;

for (var group = 0; group < number_of_groups; group++) {
  var sum = 0;
  var number_passing = 0;
  console.log(group_names[group] + " scores:");
  for (var key in groups[group]) {
    // use hasOwnProperty to filter out keys from the Object.prototype
    if (groups[group].hasOwnProperty(key)) { // REFERENCE: http://www.mojavelinux.com/articles/javascript_hashes.html
      if(groups[group][key] >= 70) { number_passing++; }
      console.log('\t' + key + '\'s score is ' + groups[group][key]);
      sum += groups[group][key];
    }
    var average = (sum / group_sizes[group]);
  }
  total_average += average;
  console.log('Average ' + group_names[group] + ' score is ' + average + ' with ' + number_passing + ' students passing.');
  console.log('');
}

total_average = total_average / number_of_groups;
console.log('Cohert average = ' + total_average + '.');
