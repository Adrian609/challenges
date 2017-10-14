# Dog Twitter Testing
An exercise created as part of Launch Academy's react curriculum to teach concepts and patterns behind testing React components.

The app has one stateful `TwitterFeed` container that renders stateless `Twitter` components for each data item in the `data.js` constant. There is a function to select a particular tweet and highlight it in yellow by clicking on it.

You should test that the `Tweet` component:
* Renders a `div` with the correct props when it is mounted with some data.
* Renders an `img` tag with the expected `src` property
* Renders a `span` tag with the expected `text`
* Renders a `p` tag with the expected `text`

You should test that the `TwitterFeed` component:
* Renders with the specified initial state (selectedTweet should be `null`)
* Renders `Tweet` components
* Does *not* pass down the `selected` class when `selectedTweet` is null.
* Does pass down the `selected` class when `selectedTweet` is not null.

You should test that the `handleSelectedtweet` function:
* Is invoked when the `onClick` property of the `Tweet` component is invoked
* Properly sets the state of the `TwitterFeed` container.

## Setup
To get set up, run the following:
```no-highlight
  npm install
  webpack-dev-server
```

And visit `localhost:8080`.

To run the tests, run `karma start` in a new terminal tab.
