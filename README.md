# NEOs_Project

## Started by cleaning the data.

Dropped all NAN for the PHA (potentially hazardous asteroid) and converted Y/N to 1 or 0.
Created 3 different datasets to run through a random forest.  Noticed that set 1 had a lot of NAN in regards to size of asteroid, will not use that set in ML model.

## Random Forest for 2 of the data sets.

As stated, only used DS2 and DS3 as DS1 had too many NAN values.  Both datasets showed to be good models with the random forest, with around 92% accuracy.  One thing I noticed in DS2 though, is that the precision for an impact was low, indicating that we are getting a lot of false negatives.  Concerning if we are looking for impacts and missing them.  Main problem could be that we have many more negative pha outcomes than positive.  Will try over or undersampling to see if that helps.  
