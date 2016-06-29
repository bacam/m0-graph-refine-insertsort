#!/bin/sh

BASE=insertsort

rm -f \
  "$BASE" \
  "$BASE".elf.symtab \
  "$BASE".elf.txt \
  "$BASE"_C_graph.txt \
  "$BASE"_mc_graph.txt \
  "$BASE"_output.txt \
  "$BASE".sigs \
  StackBounds.txt \
  umm_types.txt \
  target.pyc
