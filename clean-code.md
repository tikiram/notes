
## 1.
The first part is about awareness?
He talks about what clean code means?
Tries to elaborate the definition recieved by every ancient developer interviewed, and he also talks about the cost of having a mess as codebase. Clean code is about care. Clean code is about being able to read code the same way as a good book. Is about taking your time to write something that does only one thing in an elegant way.

## 2. Meaningful Names

- Use intention-revealing names

A small method with no clear intention
The problem isn’t the simplicity of the code but the implicity of the code ( the degree to which the context is not explicit in the code itself)

* avoid desinformation
	- avoid noise words (use `Product` instead of `ProductData`/`ProductInfo`)
		+ noise words are redundant (`somethingList` for a list variable, list is redundant)
* use pronounceable names
* use searchable names
	-  The length of a name should correspond to the size of its scope
* avoid prefixes
	- An interface should not have an `I` prefix, choose the implementation instead `SomethingImp`

> One difference between a smart programmer and a professional programmer is that the professional understands that clarity is king. Professionals use their powers for good and write code that others can understand.

* Method Names
	- When constructors are overloaded, use static factory methods with names that describe the arguments.

```
Complex fulcrumPoint = Complex.FromRealNumber(23.0)
// is generally better than
Complex fulcrumPoint = new Complex(23.0)
```

* Pick one word per concept
* Don't pun
	- using the same term for two different ideas is essentially a pun
* Don't add gratuituos Context

## Functions

* Small
	+ lines should not be 150 characters long
	+ functions should hardly ever be 20 lines long
* Blocks and Indenting
	+ blocks within `if`/`else`/`while`/etc statements should be one ling long (a function call). This implies functions should no be large enough to hold nested structures.
	+ Indent level of a function should not be greater than one or two.
* Do one thing
	+ Funcitons should do one thing. They should do it well. They should do it only.
	+ **The steps of a function are on level of abstraction below the stated name of the function.** If a function does only those steps that are one level below the stated name of the function, then the function is doing one thing.
	+ You can extract an extra function from a one-thing function, but that simply restates the code without changing the level of abstraction.
	+ Some functions are divided into sections such as 'declartions', 'initializations' and 'sieve'. This is an obvious sympton of doing more than one thing. Functions that do one thing cannot be reasonably divide into sections.

* One Level of abstraction per Function.
	+ Mixing levels of abstraction within a function is always confusing. Readers may not be able to tell whether a particular expression in an essential **concept or a detail**.
		- Once details are mixed with essential concepts, more and more details tend to accrete within the function.

* Reading Code from top to bottom
	+ We want the code to read like a top-down narrative. Every function to be followed by those at the next level of abstraction.
	+ We want to be able to read the program as though it were a set of *TO* paragraphs, each of which is describing the current level of abstraction and referencing subsequent *TO* paragraphs at the next level down.

	```
	-To include the setups and teardowns: we include setups, then we include the tests page content, and then we include the teardowns.
	
	- To include the setups: we include the suite setup if this is a suite ..
	
	- To include the suite setup: we search the parent hierarchy ...
	
	- To search the 
	```

* Don't be afraid to make a name long. A long descriptive name is better than a short enigmatic name. Choosing descriptive names will clarify the design of the module in your mind and help you to improve it.

* Function Arguments
	+ The ideal number of arguments for a function is zero (niladic)
	+ 1 (monadic)
	+ 2 (dyadic)
	+ 3 (triadic)
	+ More than three (polyadic) requires very special justification, and then shouldn't be used anyway.
	+ `includeSetupPage` is easier to understand than `includeSetupPageInto(newPageContent)` The argument is at a different level of abstraction than the function name and forces you to know a detail.
* Flag arguments
	+ flag arguments are ugly. Passing a boolean into a function is a truly terrible practice. complicates the signature of the method, loudly proclaiming that this function does more than one thing.
* Dyadic functions
	+ Arguments should have natural cohesion and a natural ordering.
	+ You should take advantage of what mechanims may be available to you to convert them into monads.
		- you can use Classes for example
* Triads
	+ The issues of ordering, pausing, and ignoring are more than doubled. **Think very carefully before creating a triad.**

* Argument Objects
	+ When need more than two or three args, it is likely that some of those arguments ought to be wrapped into a class of their own.

	```
	Circle makeCircle(double x, double y, double radius)
	Circle makeCircle(Point center, double radius)
	```
* Verbs and Keywords
	+ `writeField(name)`
	+ `assertExpectedEqualsActual(expected, actual)`
	+ Provides order and intent of the arguments (also type), this strongly mitigates the problem of having to remember the ordering of the arguments.
	+ (the previous examples are not an issue anymore, modern IDEs provides names and type out of the box when editing)


## Re-Read

* 68 (37) Switch statements


