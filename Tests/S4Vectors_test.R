#############################################
#### Testing the S4Vectors functionality ####
#############################################

# This script is used to test the basic S4Vectors functionality 
# Specifically the List and SimpleList class

library(S4Vectors)
library(testthat)

# SimpleList
test.SimpleList <- SimpleList(L1 = data.frame(x = "test1", 
                                               y = "test2"),
                              L2 = data.frame(x = "test3", 
                                               y = "test4"))
names(test.SimpleList)

mcols(test.SimpleList) <- DataFrame(M1 = c("mcols1", "mcols2"),
                                    M2 = c("mcols3", "mcols4"))

## Replacing elements
test.SimpleList.2 <- test.SimpleList
test.SimpleList.2[1] <- test.SimpleList[2]
names(test.SimpleList.2)
mcols(test.SimpleList.2)
## --> The names are not properly converted when replacing entries

test.SimpleList.2 <- test.SimpleList
test.SimpleList.2[[1]] <- test.SimpleList[[2]]
names(test.SimpleList.2)
mcols(test.SimpleList.2)
## --> The names are not properly converted when replacing entries

test.SimpleList.2 <- test.SimpleList
test.SimpleList.2[1] <- test.SimpleList[[2]]
## --> Fails

test.SimpleList.2 <- test.SimpleList
test.SimpleList.2[[1]] <- test.SimpleList[1]
names(test.SimpleList.2)
mcols(test.SimpleList.2)
## --> The names are not properly converted when replacing entries
## --> The first slot is replaced by a List object

# List
test.List <- List(L1 = data.frame(x = "test1", 
                                              y = "test2"),
                              L2 = data.frame(x = "test3", 
                                              y = "test4"))
names(test.List)

mcols(test.List) <- DataFrame(M1 = c("mcols1", "mcols2"),
                                    M2 = c("mcols3", "mcols4"))

## Replacing elements
test.List.2 <- test.List
test.List.2[1] <- test.List[2]
names(test.List.2)
mcols(test.List.2)
## --> The names are not properly converted when replacing entries

test.List.2 <- test.List
test.List.2[[1]] <- test.List[[2]]
names(test.List.2)
mcols(test.List.2)
## --> The names are not properly converted when replacing entries
## --> The mcols slot is not replaced

test.List.2 <- test.List
test.List.2[1] <- test.List[[2]]
## --> Fails

test.List.2 <- test.List
test.List.2[[1]] <- test.List[1]
names(test.List.2)
mcols(test.List.2)
## --> The names are not properly converted when replacing entries
## --> The first slot is replaced by a List object
