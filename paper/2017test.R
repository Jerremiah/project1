## csr2017_5 

csr2017_5 <- read.xlsx("D:/paper/data/TCGI/2017test.xlsx", sheet = 1)
 
csr2017_5 <- rbind(csr2017_5[, c(1,2)],
                   csr2017_5[, c(3,4)],
                   csr2017_5[, c(5,6)],
                   csr2017_5[, c(7,8)],
                   csr2017_5[, c(9,10)])

csr2017_5 <- na.omit(csr2017_5)

csr2017_5 <- csr2017_5 %>% select(簡.稱)
csr2017_5 <- unlist(csr2017_5)
csr2017_5 <- unname(csr2017_5)

## csr2017_6_20 
csr2017_6_20 <- read.xlsx("D:/paper/data/TCGI/2017test.xlsx", sheet = 2)


csr2017_6_20 <- rbind(csr2017_6_20[, c(1,2)],
                      csr2017_6_20[, c(3,4)],
                      csr2017_6_20[, c(5,6)],
                      csr2017_6_20[, c(7,8)],
                      csr2017_6_20[, c(9,10)])

csr2017_6_20 <- na.omit(csr2017_6_20)

csr2017_6_20 <- csr2017_6_20 %>% select(簡.稱)
csr2017_6_20 <- unlist(csr2017_6_20)
csr2017_6_20 <- unname(csr2017_6_20)


##csr2017_21_35 
csr2017_21_35 <- read.xlsx("D:/paper/data/TCGI/2017test.xlsx", sheet = 3)

csr2017_21_35 <- rbind(csr2017_21_35[, c(1,2)],
                       csr2017_21_35[, c(3,4)],
                       csr2017_21_35[, c(5,6)],
                       csr2017_21_35[, c(7,8)],
                       csr2017_21_35[, c(9,10)])

csr2017_21_35 <- na.omit(csr2017_21_35)

csr2017_21_35 <- csr2017_21_35 %>% select(簡.稱)
csr2017_21_35 <- unlist(csr2017_21_35)
csr2017_21_35 <- unname(csr2017_21_35)

##csr2017_36_50 
csr2017_36_50 <- read.xlsx("D:/paper/data/TCGI/2017test.xlsx", sheet = 4)

csr2017_36_50 <- rbind(csr2017_36_50[, c(1,2)],
                       csr2017_36_50[, c(3,4)],
                       csr2017_36_50[, c(5,6)],
                       csr2017_36_50[, c(7,8)],
                       csr2017_36_50[, c(9,10)])

csr2017_36_50 <- csr2017_36_50 %>% select(簡.稱)
csr2017_36_50 <- unlist(csr2017_36_50)
csr2017_36_50 <- unname(csr2017_36_50)


##csr2017_51_65 
csr2017_51_65 <- read.xlsx("D:/paper/data/TCGI/2017test.xlsx", sheet = 5)

csr2017_51_65 <- rbind(csr2017_51_65[, c(1,2)],
                       csr2017_51_65[, c(3,4)],
                       csr2017_51_65[, c(5,6)],
                       csr2017_51_65[, c(7,8)],
                       csr2017_51_65[, c(9,10)])

csr2017_51_65 <- na.omit(csr2017_51_65)

csr2017_51_65 <- csr2017_51_65 %>% select(簡.稱)
csr2017_51_65 <- unlist(csr2017_51_65)
csr2017_51_65 <- unname(csr2017_51_65)

##csr2017_66_80 
csr2017_66_80 <- read.xlsx("D:/paper/data/TCGI/2017test.xlsx", sheet = 6)

csr2017_66_80 <- rbind(csr2017_66_80[, c(1,2)],
                       csr2017_66_80[, c(3,4)],
                       csr2017_66_80[, c(5,6)],
                       csr2017_66_80[, c(7,8)],
                       csr2017_66_80[, c(9,10)])

csr2017_66_80 <- na.omit(csr2017_66_80)

csr2017_66_80 <- csr2017_66_80 %>% select(簡.稱)
csr2017_66_80 <- unlist(csr2017_66_80)
csr2017_66_80 <- unname(csr2017_66_80)

##csr2017_81_100 
csr2017_81_100 <- read.xlsx("D:/paper/data/TCGI/2017test.xlsx", sheet = 7)

csr2017_81_100 <- rbind(csr2017_81_100[, c(1,2)],
                       csr2017_81_100[, c(3,4)],
                       csr2017_81_100[, c(5,6)],
                       csr2017_81_100[, c(7,8)],
                       csr2017_81_100[, c(9,10)])

csr2017_81_100 <- na.omit(csr2017_81_100)


##csr2017_notin
csr2017_notin<- read.xlsx("D:/paper/data/TCGI/2017test.xlsx", sheet = 8)

csr2017_81_100 <- csr2017_81_100 %>% select(簡.稱)
csr2017_81_100 <- unlist(csr2017_81_100)
csr2017_81_100 <- unname(csr2017_81_100)

csr2017_notin <- rbind(csr2017_notin[, c(1,2)],
                        csr2017_notin[, c(3,4)],
                        csr2017_notin[, c(5,6)],
                        csr2017_notin[, c(7,8)],
                        csr2017_notin[, c(9,10)])


csr2017_notin <- na.omit(csr2017_notin)

csr2017_notin <- csr2017_notin %>% select(簡.稱)
csr2017_notin <- unlist(csr2017_notin)
csr2017_notin <- unname(csr2017_notin)

## cross test with 天下 & TCGI

tes2017 <- subset(x, 事件日 > as.Date("2016-12-31")& 事件日 < as.Date("2018-01-01"))
tes2017 <- tes2017 %>% group_by(公司及名稱) %>% # try to get the "公司名稱" out of the data
    summarise(n = n()) %>%  # it is not necesary step. all I wanted to show is the usage of 'n=n()' 
    select(公司及名稱)

tes2017 <- apply(tes2017, 1, function(x){substr(x, 9, nchar(x))})

unlist(lapply(tes2017 ,function(x){grep(x,llist,value = F)}))

llist[49]
llist[3]

top5 <- unlist(lapply(csr2017_5 ,function(x){grep(x,tes2017,value = F)}))
top6_20 <- unlist(lapply(csr2017_6_20 ,function(x){grep(x,tes2017,value = F)}))
top21_35 <- unlist(lapply(csr2017_21_35 ,function(x){grep(x,tes2017,value = F)}))
top36_50 <- unlist(lapply(csr2017_36_50 ,function(x){grep(x,tes2017,value = F)}))
top51_65 <- unlist(lapply(csr2017_51_65 ,function(x){grep(x,tes2017,value = F)}))
top66_80 <- unlist(lapply(csr2017_66_80 ,function(x){grep(x,tes2017,value = F)}))
top81_100 <- unlist(lapply(csr2017_81_100 ,function(x){grep(x,tes2017,value = F)}))
top_notin <- unlist(lapply(csr2017_notin ,function(x){grep(x,tes2017,value = F)}))

as.data.frame(rbind(length(seolist[top5]),
                    length(seolist[top6_20]),
                    length(seolist[top21_35]),
                    length(seolist[top36_50]),
                    length(seolist[top51_65]),
                    length(seolist[top66_80]),
                    length(seolist[top81_100]),
                    length(seolist[top_notin])))





























