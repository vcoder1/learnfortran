<!-- effect=explosions -->

# Fortran!

.

---
In Fortran, 
you can change the range of a constant by using the underscore
According Modern Fortran Explained:


>To be sure that the range will be adequate on any
>computer requires the specification of
>the kind of integer by giving a value for the 
>kind type parameter. This is best done through a
>named integer constant. 

---
For example, if the range −999 999
to 999 999 is desired, k6 may be
established as a constant with an
appropriate value by the fortran statement
`integer, parameter :: k6 = selected_int_kind(6)`
and used in constants thus:


```
-123456_k6
+1_k6
2_k6
``` 
---
<!-- fg=black bg=yellow -->
```selected_int_kind()``` is an inquiry function call, and it returns a kind parameter value that 
yields the range -999999 to 999999 with the least margin.


Also, if on a given proceessor, if the kind value is 3, the first constant can be written as:

```
-123456_3
```

The value of the kind type parameter for a given data type on a given processor can be
obtained from the kind intrinsic function-
```
kind(1) ! for the default value
kind(2_k6) ! for the example
```

---

The decimal exponent range (number of decimal digits supported) of a given entity may
be obtained from another function as in - 
```
range(2_k6)
```

---

