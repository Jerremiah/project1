## create function
csrload <- function(year){
    dest <- sprintf("D:/paper/data/天下/b/%s.xlsx", year)
    
    read.xlsx(dest)
}

## read 2007-2018 datas
a <- csrload(2007); b <- csrload(2008); c <- csrload(2009)
d <- csrload(2010); e <- csrload(2011); f <- csrload(2012)
g <- csrload(2013); h <- csrload(2014); i <- csrload(2015)
j <- csrload(2016); k <- csrload(2017); l <- csrload(2018)

## 2007企業名單
alist <- a %>% select(企業)
alist <- unlist(alist)
alist <- unname(alist)

## 2008企業名單
blist <- b %>% select(企業)
blist <- unlist(blist)
blist <- unname(blist)

## 2009企業名單
clist <- c %>% select(企業)
clist <- unlist(clist)
clist <- unname(clist)

## 2010企業名單
dlist <- d %>% select(企業)
dlist <- unlist(dlist)
dlist <- unname(dlist)

## 2011企業名單
elist <- e %>% select(企業)
elist <- unlist(elist)
elist <- unname(elist)

## 2012企業名單
flist <- f %>% select(企業)
flist <- unlist(flist)
flist <- unname(flist)

## 2013企業名單
glist <- g %>% select(企業)
glist <- unlist(glist)
glist <- unname(glist)

## 2014企業名單
hlist <- h %>% select(企業)
hlist <- unlist(hlist)
hlist <- unname(hlist)

## 2015企業名單
ilist <- i %>% select(企業)
ilist <- unlist(ilist)
ilist <- unname(ilist)

## 2016企業名單
jlist <- j %>% select(企業)
jlist <- unlist(jlist)
jlist <- unname(jlist)

## 2017企業名單
klist <- k %>% select(企業)
klist <- unlist(klist)
klist <- unname(klist)

## 2018企業名單
llist <- l %>% select(企業)
llist <- unlist(llist)
llist <- unname(llist)
