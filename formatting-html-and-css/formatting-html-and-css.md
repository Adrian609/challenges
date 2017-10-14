## Brussels Sprouts Deserve Nice Websites

Let's write a nice looking website for our favorite brussels sprouts recipe!

### Setup
To get set up, run the following:

```no-highlight
et get formatting-html-and-css
cd formatting-html-and-css
open index.html
```

This should open our index page in the browser. It's quite plain right now, but we eventually want it to look like this:

![img](https://s3.amazonaws.com/horizon-production/images/WRIZIHD.png)

### Meets Expectations Requirements
In order to meet expectations, your code should do the following:

##### HTML and CSS Requirements
Let's make our page look better!

* Add a photo of the completed recipe! We suggest this one: [here](https://s3.amazonaws.com/horizon-production/images/Roasted-Brussels-Sprouts.jpg).
* Change the font style on the page to a (https://www.fonts.com/content/learning/fontology/level-1/type-anatomy/serif-vs-sans-for-text-in-print "sans-serif") font
* Change the website title to a different, serif font.

**Tip:** You can count "Brussel Lyfe" *or* "The World's #1 Brussels Sprout Recipes" as the title. **You are not required to have both**, but you can if you choose to.

##### JavaScript Requirements
Let's make our page interactive! Currently, we don't have any ingredients or directions listed on the page. All of this information is stored in the `main.js` file. Let's make sure that a user can read this information for delicious brussels sprouts!

* Write a function for the `Show Ingredients` button that appends a list item for each ingredient under the `Ingredients` heading. These list items should be bullet points, since their order does not matter.
* Write a function for the `Show Directions` button that appends a list item for each step under the `Directions` heading. These list items should be numbers, since their order matters.

### Exceeds Expectations Requirements
* Write a function that will make the brussels sprouts image disappear from the page when clicked.
* Change the background color to an off-white color.
* Change the background of the site heading to an accent color. It can be the orange in the example, or a different one of your choice.
* Three classes (`purple-banner`, `green-banner`, and `gray-banner`) have already been defined for you in the `styles.css` file. Write a function that uses these class names to randomly apply styling to the top banner when it is clicked. The effect should be that the banner background changes color every time it is clicked.
