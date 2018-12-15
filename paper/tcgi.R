### TCGI-2014TSE

tcgitse榜單14 <- unlist(lapply(seo_tse14 ,function(x){grep(x,,value = F)}))
tcgitse榜單14 <- unlist(lapply(seo_tse14 ,function(x){grep(x,,value = F)}))
tcgitse榜單14 <- unlist(lapply(seo_tse14 ,function(x){grep(x,,value = F)}))


b天下7  <- data.frame(b_cwcsr07[b榜單7 ]) ;colnames(b天下7 ) <- "company" # NA
b天下8  <- data.frame(b_cwcsr08[b榜單8 ]) ;colnames(b天下8 ) <- "company"
b天下9  <- data.frame(b_cwcsr09[b榜單9 ]) ;colnames(b天下9 ) <- "company" # NA
b天下10 <- data.frame(b_cwcsr10[b榜單10]) ;colnames(b天下10) <- "company"
b天下11 <- data.frame(b_cwcsr11[b榜單11]) ;colnames(b天下11) <- "company"
b天下12 <- data.frame(b_cwcsr12[b榜單12]) ;colnames(b天下12) <- "company" # NA
b天下13 <- data.frame(b_cwcsr13[b榜單13]) ;colnames(b天下13) <- "company"
b天下14 <- data.frame(b_cwcsr14[b榜單14]) ;colnames(b天下14) <- "company"
b天下15 <- data.frame(b_cwcsr15[b榜單15]) ;colnames(b天下15) <- "company"
b天下16 <- data.frame(b_cwcsr16[b榜單16]) ;colnames(b天下16) <- "company" # NA
b天下17 <- data.frame(b_cwcsr17[b榜單17]) ;colnames(b天下17) <- "company"
b天下18 <- data.frame(b_cwcsr18[b榜單18]) ;colnames(b天下18) <- "company"

table_create <- function(x){
    cw <- data.frame(rep(1,length(x)))
    cw <- rep(1,length(x))
    cbind(x, cw)
}

b天下7 <- table_create(b天下7) # NA
b天下9 <- table_create(b天下9) # NA
b天下12 <- table_create(b天下12) # NA
b天下16 <- table_create(b天下16) # NA
b天下8 <- table_create(b天下8) 
b天下10 <- table_create(b天下10)
b天下11 <- table_create(b天下11)
b天下13 <- table_create(b天下13)
b天下14 <- table_create(b天下14)
b天下15 <- table_create(b天下15)
b天下17 <- table_create(b天下17)
b天下18 <- table_create(b天下18)




### 中公司
m榜單14 <- unlist(lapply(seo_otc14 ,function(x){grep(x,m_cwcsr14,value = F)}))
unlist(lapply(seo_otc07 ,function(x){grep(x,m_cwcsr07,value = F)}))
unlist(lapply(seo_otc08 ,function(x){grep(x,m_cwcsr08,value = F)}))
unlist(lapply(seo_otc09 ,function(x){grep(x,m_cwcsr09,value = F)}))
unlist(lapply(seo_otc10 ,function(x){grep(x,m_cwcsr10,value = F)}))
unlist(lapply(seo_otc11 ,function(x){grep(x,m_cwcsr11,value = F)}))
unlist(lapply(seo_otc12 ,function(x){grep(x,m_cwcsr12,value = F)}))
unlist(lapply(seo_otc13 ,function(x){grep(x,m_cwcsr13,value = F)}))
unlist(lapply(seo_otc15 ,function(x){grep(x,m_cwcsr15,value = F)}))
unlist(lapply(seo_otc16 ,function(x){grep(x,m_cwcsr16,value = F)}))
unlist(lapply(seo_otc17 ,function(x){grep(x,m_cwcsr17,value = F)}))
unlist(lapply(seo_otc18 ,function(x){grep(x,m_cwcsr18,value = F)}))

m天下14 <- data.frame(m_cwcsr14[m榜單14]); colnames(m天下14) <- "company"
m天下14 <- table_create(m天下14)


### 小公司
s榜單17 <- unlist(lapply(seo_otc17 ,function(x){grep(x,s_cwcsr17,value = F)}))
unlist(lapply(seo_otc15 ,function(x){grep(x,s_cwcsr15,value = F)}))
unlist(lapply(seo_otc16 ,function(x){grep(x,s_cwcsr16,value = F)}))
unlist(lapply(seo_otc18 ,function(x){grep(x,s_cwcsr18,value = F)}))

s天下17 <- data.frame(s_cwcsr17[s榜單17]); colnames(s天下17) <- "company"
s天下17 <- table_create(s天下17)


### 天下總結

cwsummarytable <- rbind(b天下8,b天下10,b天下11,b天下13,b天下14,b天下15,b天下17,b天下18,m天下14,s天下17) %>% 
    group_by(company) %>%
    summarise(cw = n())






















































