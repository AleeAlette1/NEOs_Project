# NEOs_Project

## Started by cleaning the data.

Dropped all NAN for the PHA (potentially hazardous asteroid) and converted Y/N to 1 or 0.
Created 3 different datasets to run through a random forest.  Noticed that set 1 had a lot of NAN in regards to size of asteroid, will not use that set in ML model.

## Random Forest for 2 of the data sets.

As stated, only used DS2 and DS3 as DS1 had too many NAN values.  Both datasets showed to be good models with the random forest, with around 92% accuracy.  One thing I noticed in DS2 though, is that the precision for an impact was low, indicating that we are getting a lot of false negatives.  Concerning if we are looking for impacts and missing them.  Main problem could be that we have many more negative pha outcomes than positive.  Will try over or undersampling to see if that helps.  

## Over and Under Sampling for DS2.

These 2 methods worked better, in that they idenified more true positives.  It is a bit concerning that there are still many false negaives, almost 40% of actual impacts were classified wrong in the oversampling (228 predicted wrong, 325 predicted correctly) and similar results for the undersampling.  The main change here is a drop in accuracy in that we have more false positives, ie predicted impacts that are not actual impacts.

## One last test with SMOTEENN

This seemed to work a lot better.  Accuracy is still not great, but that is more because of the false positives, which is better than a false negative when dealing with asteroid impacts.  We still have a high rate of false negatives, with our recall at 0.75, or about 25% of the actual impacts are predicted to be misses.  Need to see if we can clean that up in a future model.
