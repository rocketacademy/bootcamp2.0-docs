# CSS 1.3: Cascading and Specificity

### Cascading

Cascading is the process by which CSS handles when two or more rules target the same element.  CSS adds an order of importance to each rule as follows:

* Developer styles
* User styles
* Browser styles

Rules are ordered by how specific the selector is. More specific selectors override those with less specific ones. If two rules are equally specified, the last rule will be applied.

### Specificity

In order to determine which rules are applied, CSS calculates the specificity of each rule.  The rule with the highest specificity is applied. The specificity of a selector is broken down into four levels: a,b,c,d.

* If  style is inline, a = 1 otherwise a = 0
* b = total number of ID selectors
* c = total number of class, pseudo-class and attribute selectors
* d = total number of type selectors and pseudo-element selectors

Because the specificity is not calculated on base 10 here is a table to help translate them to base 10.

| Selector               | Specificity a,b,c,d | Specificity In Base 10 |
| ---------------------- | ------------------- | ---------------------- |
| style="color: green;"  | 1,0,0,0             | 1000                   |
| #wrapper #content {}   | 0,2,0,0             | 200                    |
| #content .datePosted{} | 0,1,1,0             | 110                    |
| div #content           | 0,1,0,1             | 101                    |
| #content               | 0,1,0,0             | 100                    |
| div p                  | 0,0,0,2             | 2                      |
| p                      | 0,0,0,1             | 1                      |

