The insertion sort code is taken from the [Mälardalen WCET benchmark
suite](http://www.mrtc.mdh.se/projects/wcet/benchmarks.html), but altered to
move the inner loop into its own function for compatibility with the SEL4
tools.

The C parsing and graph export code in `Insertsort.thy` is based on the
examples in the `graph-refine` repository and the SEL4 code.  The `target.py`
driver is based on the `graph-refine` ones, but has a little extra code added
to ignore the cycle counter variable in loops.
