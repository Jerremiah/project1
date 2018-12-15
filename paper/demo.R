library(openxlsx)
library(dplyr)
library(tidyverse)
library(readr)

## covered rate
# l to a
temp <- unlist(lapply(alist ,function(x){grep(x,llist,value = F)}))
length(temp)/length(alist)

# l to b
temp <- unlist(lapply(blist ,function(x){grep(x,llist,value = F)}))
length(temp)/length(blist)

# l to c
temp <- unlist(lapply(clist ,function(x){grep(x,llist,value = F)}))
length(temp)/length(clist)

# l to d
temp <- unlist(lapply(dlist ,function(x){grep(x,llist,value = F)}))
length(temp)/length(dlist)

# l to e
temp <- unlist(lapply(elist ,function(x){grep(x,llist,value = F)}))
length(temp)/length(elist)

# l to f
temp <- unlist(lapply(flist ,function(x){grep(x,llist,value = F)}))
length(temp)/length(flist)

# l to g
temp <- unlist(lapply(glist ,function(x){grep(x,llist,value = F)}))
length(temp)/length(glist)

# l to h
temp <- unlist(lapply(hlist ,function(x){grep(x,llist,value = F)}))
length(temp)/length(hlist)

# l to i
temp <- unlist(lapply(ilist ,function(x){grep(x,llist,value = F)}))
length(temp)/length(ilist)

# l to j
temp <- unlist(lapply(jlist ,function(x){grep(x,llist,value = F)}))
length(temp)/length(jlist)

# l to k
temp <- unlist(lapply(klist ,function(x){grep(x,llist,value = F)}))
length(temp)/length(klist)


## how many high csr company is in the seolist
# a 
unlist(lapply(seolist ,function(x){grep(x,alist,value = F)}))

# b 
unlist(lapply(seolist ,function(x){grep(x,blist,value = F)}))

# c
unlist(lapply(seolist ,function(x){grep(x,clist,value = F)}))

# d
unlist(lapply(seolist ,function(x){grep(x,dlist,value = F)}))

# e
unlist(lapply(seolist ,function(x){grep(x,flist,value = F)}))

# f
unlist(lapply(seolist ,function(x){grep(x,glist,value = F)}))

# g
unlist(lapply(seolist ,function(x){grep(x,hlist,value = F)}))

# h
unlist(lapply(seolist ,function(x){grep(x,ilist,value = F)}))

# i
unlist(lapply(seolist ,function(x){grep(x,ilist,value = F)}))

# j
unlist(lapply(seolist ,function(x){grep(x,jlist,value = F)}))

# k
unlist(lapply(seolist ,function(x){grep(x,klist,value = F)}))

# l
unlist(lapply(seolist ,function(x){grep(x,llist,value = F)}))

## result none of them is in the seolist





