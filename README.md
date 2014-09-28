== Form Objects with multiple dynamic objects

When you've got a reasonably complicated set of models and relationships sometimes
it is easier to create a class just for the form and use logic in that class
to create the objects. The question is how to dynamically create fields that
will populate child objects.

## The Models
In this example application we're going to make a list of professors that
we like. We want to keep track of what university they work for and also what
paper's they have written.

University -> has_many -> Professors -> has_many -> Papers.

In our form we would like to enter information about a professor, and the
university at which the professor works. Then in the same form we will enter
papers that the professor has written, but we want to be able to add whatever
number of papers that the user wants to enter. That means dynamically creating new
fields in the form and dynamically creating the child objects.
