tse榜單5 <- unlist(lapply(seo_tse05 ,function(x){grep(x,gvmcsr05,value = F)}))
tse榜單6 <- unlist(lapply(seo_tse06 ,function(x){grep(x,gvmcsr06,value = F)}))
tse榜單7 <- unlist(lapply(seo_tse07 ,function(x){grep(x,gvmcsr07,value = F)}))
tse榜單8 <- unlist(lapply(seo_tse08 ,function(x){grep(x,gvmcsr08,value = F)}))
tse榜單9 <- unlist(lapply(seo_tse09 ,function(x){grep(x,gvmcsr09,value = F)}))
tse榜單10 <- unlist(lapply(seo_tse10 ,function(x){grep(x,gvmcsr10,value = F)}))
tse榜單11 <- unlist(lapply(seo_tse11 ,function(x){grep(x,gvmcsr11,value = F)}))
tse榜單12 <- unlist(lapply(seo_tse12 ,function(x){grep(x,gvmcsr12,value = F)}))
tse榜單13 <- unlist(lapply(seo_tse13 ,function(x){grep(x,gvmcsr13,value = F)}))
tse榜單14 <- unlist(lapply(seo_tse14 ,function(x){grep(x,gvmcsr14,value = F)}))
tse榜單15 <- unlist(lapply(seo_tse15 ,function(x){grep(x,gvmcsr15,value = F)}))
tse榜單16 <- unlist(lapply(seo_tse16 ,function(x){grep(x,gvmcsr16,value = F)}))
tse榜單17 <- unlist(lapply(seo_tse17 ,function(x){grep(x,gvmcsr17,value = F)}))
tse榜單18 <- unlist(lapply(seo_tse18 ,function(x){grep(x,gvmcsr18,value = F)}))

otc榜單5 <- unlist(lapply(seo_otc05 ,function(x){grep(x,gvmcsr05,value = F)}))
otc榜單6 <- unlist(lapply(seo_otc06 ,function(x){grep(x,gvmcsr06,value = F)}))
otc榜單7 <- unlist(lapply(seo_otc07 ,function(x){grep(x,gvmcsr07,value = F)}))
otc榜單8 <- unlist(lapply(seo_otc08 ,function(x){grep(x,gvmcsr08,value = F)}))
otc榜單9 <- unlist(lapply(seo_otc09 ,function(x){grep(x,gvmcsr09,value = F)}))
otc榜單10 <- unlist(lapply(seo_otc10 ,function(x){grep(x,gvmcsr10,value = F)}))
otc榜單11 <- unlist(lapply(seo_otc11 ,function(x){grep(x,gvmcsr11,value = F)}))
otc榜單12 <- unlist(lapply(seo_otc12 ,function(x){grep(x,gvmcsr12,value = F)}))
otc榜單13 <- unlist(lapply(seo_otc13 ,function(x){grep(x,gvmcsr13,value = F)}))
otc榜單14 <- unlist(lapply(seo_otc14 ,function(x){grep(x,gvmcsr14,value = F)}))
otc榜單15 <- unlist(lapply(seo_otc15 ,function(x){grep(x,gvmcsr15,value = F)}))
otc榜單16 <- unlist(lapply(seo_otc16 ,function(x){grep(x,gvmcsr16,value = F)}))
otc榜單17 <- unlist(lapply(seo_otc17 ,function(x){grep(x,gvmcsr17,value = F)}))
otc榜單18 <- unlist(lapply(seo_otc18 ,function(x){grep(x,gvmcsr18,value = F)}))

otc榜單5  # NA
otc榜單6  # NA
otc榜單7  # NA
otc榜單8  # NA
otc榜單9  # NA
otc榜單10 # NA
otc榜單11 # NA
otc榜單12 # NA
otc榜單13 # NA
otc榜單14 # NA
otc榜單15 # NA
otc榜單16 # NA
otc榜單17 # NA
otc榜單18 # NA

tse榜單5  # NA
tse榜單6  # NA
tse榜單7  # NA
tse榜單8  # NA
tse榜單9  # NA
tse榜單10 # NA
tse榜單11 # NA
tse榜單12 # NA
tse榜單13
tse榜單14
tse榜單15
tse榜單16 # NA
tse榜單17
tse榜單18 # NA






tse遠見13 <- data.frame(gvmcsr13[tse榜單13]) ;colnames(tse遠見13) <- "company" 
tse遠見14 <- data.frame(gvmcsr14[tse榜單14]) ;colnames(tse遠見14) <- "company"
tse遠見15 <- data.frame(gvmcsr15[tse榜單15]) ;colnames(tse遠見15) <- "company" ; tse遠見15 <-unique(tse遠見15) # remove duplicated row
tse遠見17 <- data.frame(gvmcsr17[tse榜單17]) ;colnames(tse遠見17) <- "company"



table_create <- function(x){
    gvm <- data.frame(rep(1,length(x)))
    gvm <- rep(1,length(x))
    cbind(x, gvm)
}

tse遠見13 <- table_create(tse遠見13)
tse遠見14 <- table_create(tse遠見14)
tse遠見15 <- table_create(tse遠見15)
tse遠見17 <- table_create(tse遠見17)



gvmsummarytable <- rbind(tse遠見13,
                         tse遠見14,
                         tse遠見15,
                         tse遠見17) %>% 
    group_by(company) %>%
    summarise(cw = n())



