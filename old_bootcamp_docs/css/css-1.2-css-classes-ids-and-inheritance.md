---
description: Applying classes and id's to HTML elements and styling them with CSS
---

# CSS 1.2 CSS Classes, Id's and Inheritance

### Classes

Classes are used in CSS when different types of elements need the same styling but only in certain cases and not across the board.  A class is written as an attribute-value pair inside the opening tag of an element.&#x20;

```
<h2 class="special">This h2 has a class of special </h2>
<p class="special" > This paragraph has a class of special </p>
```

Here is the CSS styling for the special class:

```
.special{
    background-color: green;
    color: white:
    }
```

The h2 and the p tag text would have a background-color of green and text color of white, regardless of the background-color or color rules applied to all p or h2 tags initially. &#x20;

Also rules that were applied to all p and h2 tags that were not overwritten in the special class would still be applied to the p and h2 tags with the special class.  For instance the font-size should stay the same for the h2 because the special class did not overwrite that rule.

### IDs

An ID used on one and only one element.  Just like each person has their own driver's license or  SS number unique to them.  An ID should have the same trait.  An ID is written as an attribute-value pair inside the opening tag of an element:

```
<p> This is a regular p tag </p>
<p id="unique" > This paragraph is unique in its styling </p>
```

This is how to style an ID in CSS

```
#unique{
    color: green;
    font-size: 25px;
    }
```

The font size of this paragraph with id "unique" will be 25px and its text will be color green.&#x20;

### Inheritance

Inheritance describes how descendant elements inherit certain properties from its parent element. For example, for CSS to style the color of the text and the font-size of all elements on the page, adding these rules to the body selector should do the trick since all other elements are descendants of body in the DOM.

```
body {
    color: white;
    font-size: 20px;
    }
```

However, tags that have a set font-size in the browser styles like h1, won't inherit that style since that specific rule is written in the h1 rule and is thus more specific.

