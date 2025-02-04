# Lua pairs() Iterator and Deeply Nested Tables

This repository demonstrates a potential issue with Lua's `pairs` iterator when dealing with deeply nested tables.  Modifying a table while iterating over it using `pairs` can lead to unexpected behavior, potentially resulting in a stack overflow if the table structure is sufficiently complex.

The `bug.lua` file contains a function that attempts to recursively traverse a nested table.  This function might not work correctly with all types of nested table structures.

The `bugSolution.lua` file provides a solution that addresses this issue by using a different iteration approach that does not modify the table during iteration.