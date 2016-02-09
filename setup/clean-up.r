###--------------------------------------------------
### This file deletes everything in the R workspace
### Use it at the start of a run.
###--------------------------------------------------

print("Removing old objects ...")
rm(list = ls(all = TRUE))
