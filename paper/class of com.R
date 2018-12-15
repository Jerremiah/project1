## 2007-2018
seolist <- y %>% group_by(公司及名稱) %>% # try to get the "公司名稱" out of the data
    summarise(n = n()) %>%  # it is not necesary step. all I wanted to show is the usage of 'n=n()' 
    select(公司及名稱)

seolist <- apply(seolist, 1, function(x){substr(x, 9, nchar(x))})


## 2014-2018
seolist <- z %>% group_by(公司及名稱) %>% # try to get the "公司名稱" out of the data
    summarise(n = n()) %>%  # it is not necesary step. all I wanted to show is the usage of 'n=n()' 
    select(公司及名稱)

seolist <- apply(seolist, 1, function(x){substr(x, 9, nchar(x))})


top5 <- unlist(lapply(csr2017_5 ,function(x){grep(x,seolist,value = F)}))
top6_20 <- unlist(lapply(csr2017_6_20 ,function(x){grep(x,seolist,value = F)}))
top21_35 <- unlist(lapply(csr2017_21_35 ,function(x){grep(x,seolist,value = F)}))
top36_50 <- unlist(lapply(csr2017_36_50 ,function(x){grep(x,seolist,value = F)}))
top51_65 <- unlist(lapply(csr2017_51_65 ,function(x){grep(x,seolist,value = F)}))
top66_80 <- unlist(lapply(csr2017_66_80 ,function(x){grep(x,seolist,value = F)}))
top81_100 <- unlist(lapply(csr2017_81_100 ,function(x){grep(x,seolist,value = F)}))
top_notin <- unlist(lapply(csr2017_notin ,function(x){grep(x,seolist,value = F)}))

from14 <- as.data.frame(rbind(length(seolist[top5]),
                         length(seolist[top6_20]),
                         length(seolist[top21_35]),
                         length(seolist[top36_50]),
                         length(seolist[top51_65]),
                         length(seolist[top66_80]),
                         length(seolist[top81_100]),
                         length(seolist[top_notin])))
rownames(from14) <- c("top5", "top6_20", "top21_35", "top36_50", "top51_65", "top66_80", "top_81_100", "top_notin") 
colnames(from14) <- c("count")


## 天下-TCGI比例
temp <- unlist(lapply(csr2017_36_50 ,function(x){grep(x,llist,value = F)}))
length(temp)/length(llist)
