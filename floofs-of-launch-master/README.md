## Floofs of Launch
A React app live-coded as part of Launch Academy's intro to React curriculum. The goal is to practice building stateless components, nesting components inside other components, and `map`-ping over data to create collections of React components.

The `App.js` top-level component should render a `CatSection` and a `DogSection`. It passes down data from the constant `data.js`. You should edit the `CatSection` and `DogSection` to `map` over the `data` coming down through `props` and return `CatTile`s or `DogTiles` respectively.

As a potential refactor, create one `AnimalContainer` that renders both `CatTile`s and `DogTile`s.

## Setup
To get set up, run the following:

```no-highlight
  npm install
  npm start
```
and navigate to `localhost:8080`
