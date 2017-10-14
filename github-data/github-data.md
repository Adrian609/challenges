## Introduction

In this challenge, you will answer questions about repositories from [LaunchAcademy's GitHub account](https://api.github.com/orgs/LaunchAcademy/repos).

## Learning Goals

* Navigate a data structure and answer questions about it.

## Getting Started

```no-highlight
$ cd ~/challenges
$ et get github-data
$ cd github-data
```

## Instructions

We have provided the data needed in the `data.js` file. Notice how the data is "imported" at the top of the `github-data.js` file.

```javascript
let data = require('./data');
```

The `data` variable in `github-data.js` will contain the array defined in the `data.js` file.

Write code in `github-data.js` using the `data` array to answer the following questions.

1. How many repositories does LaunchAcademy own?
2. Which repository has the largest size?
3. Which repository has the most watchers?
4. What is the most-recently created repository?
5. What is the oldest repository?
6. Print out (to the console) the name and description for each repository.
