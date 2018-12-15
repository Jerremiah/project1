library(openxlsx)
library(rccdates)
library(dplyr)
library(purrr)

### OTC Company
a <- read.xlsx("J:/paper_EX/paper/data/SEO/seo_otc.xlsx")
class(a$公告日)
class(a$事件日)

a$公告日 <- as.Date(a$公告日, formats = "%Y/%m/%d")
a$事件日 <- as.Date(a$事件日, format = "%Y/%m/%d")
seo_otc05 <- subset(a, 事件日 > as.Date("2004-12-31") & 事件日 < as.Date("2006-01-01"))
seo_otc06 <- subset(a, 事件日 > as.Date("2005-12-31") & 事件日 < as.Date("2007-01-01"))
seo_otc07 <- subset(a, 事件日 > as.Date("2006-12-31") & 事件日 < as.Date("2008-01-01"))
seo_otc08 <- subset(a, 事件日 > as.Date("2007-12-31") & 事件日 < as.Date("2009-01-01"))
seo_otc09 <- subset(a, 事件日 > as.Date("2008-12-31") & 事件日 < as.Date("2010-01-01"))
seo_otc10 <- subset(a, 事件日 > as.Date("2009-12-31") & 事件日 < as.Date("2011-01-01"))
seo_otc11 <- subset(a, 事件日 > as.Date("2010-12-31") & 事件日 < as.Date("2012-01-01"))
seo_otc12 <- subset(a, 事件日 > as.Date("2011-12-31") & 事件日 < as.Date("2013-01-01"))
seo_otc13 <- subset(a, 事件日 > as.Date("2012-12-31") & 事件日 < as.Date("2014-01-01"))
seo_otc14 <- subset(a, 事件日 > as.Date("2013-12-31") & 事件日 < as.Date("2015-01-01"))
seo_otc15 <- subset(a, 事件日 > as.Date("2014-12-31") & 事件日 < as.Date("2016-01-01"))
seo_otc16 <- subset(a, 事件日 > as.Date("2015-12-31") & 事件日 < as.Date("2017-01-01"))
seo_otc17 <- subset(a, 事件日 > as.Date("2016-12-31") & 事件日 < as.Date("2018-01-01"))
seo_otc18 <- subset(a, 事件日 > as.Date("2017-12-31") & 事件日 < as.Date("2019-01-01"))

seo.trans <- function(x){
    
    x %>% group_by(公司及名稱) %>%
          summarise(n = n()) %>%
          select(公司及名稱) %>%
          apply( 1, function(y){substr(y, 9, nchar(y))}) %>%
          as.vector()
}
seo_otc05 <- seo.trans(seo_otc05)
seo_otc06 <- seo.trans(seo_otc06)
seo_otc07 <- seo.trans(seo_otc07)
seo_otc08 <- seo.trans(seo_otc08)
seo_otc09 <- seo.trans(seo_otc09)
seo_otc10 <- seo.trans(seo_otc10)
seo_otc11 <- seo.trans(seo_otc11)
seo_otc12 <- seo.trans(seo_otc12)
seo_otc13 <- seo.trans(seo_otc13)
seo_otc14 <- seo.trans(seo_otc14)
seo_otc15 <- seo.trans(seo_otc15)
seo_otc16 <- seo.trans(seo_otc16)
seo_otc17 <- seo.trans(seo_otc17)
seo_otc18 <- seo.trans(seo_otc18)





### TSE company
x <- read.xlsx("J:/paper_EX/paper/data/SEO/seo_tse.xlsx")
class(x$公告日)
class(x$事件日)

x$公告日 <- as.Date(x$公告日, formats = "%Y/%m/%d")
x$事件日 <- as.Date(x$事件日, format = "%Y/%m/%d")
seo_tse05 <- subset(x, 事件日 > as.Date("2004-12-31") & 事件日 < as.Date("2006-01-01"))
seo_tse06 <- subset(x, 事件日 > as.Date("2005-12-31") & 事件日 < as.Date("2007-01-01"))
seo_tse07 <- subset(x, 事件日 > as.Date("2006-12-31") & 事件日 < as.Date("2008-01-01"))
seo_tse08 <- subset(x, 事件日 > as.Date("2007-12-31") & 事件日 < as.Date("2009-01-01"))
seo_tse09 <- subset(x, 事件日 > as.Date("2008-12-31") & 事件日 < as.Date("2010-01-01"))
seo_tse10 <- subset(x, 事件日 > as.Date("2009-12-31") & 事件日 < as.Date("2011-01-01"))
seo_tse11 <- subset(x, 事件日 > as.Date("2010-12-31") & 事件日 < as.Date("2012-01-01"))
seo_tse12 <- subset(x, 事件日 > as.Date("2011-12-31") & 事件日 < as.Date("2013-01-01"))
seo_tse13 <- subset(x, 事件日 > as.Date("2012-12-31") & 事件日 < as.Date("2014-01-01"))
seo_tse14 <- subset(x, 事件日 > as.Date("2013-12-31") & 事件日 < as.Date("2015-01-01"))
seo_tse15 <- subset(x, 事件日 > as.Date("2014-12-31") & 事件日 < as.Date("2016-01-01"))
seo_tse16 <- subset(x, 事件日 > as.Date("2015-12-31") & 事件日 < as.Date("2017-01-01"))
seo_tse17 <- subset(x, 事件日 > as.Date("2016-12-31") & 事件日 < as.Date("2018-01-01"))
seo_tse18 <- subset(x, 事件日 > as.Date("2017-12-31") & 事件日 < as.Date("2019-01-01"))

seo.trans <- function(x){
    
    x %>% group_by(公司及名稱) %>%
        summarise(n = n()) %>%  # it is not necesary step. all I wanted to show is the usage of 'n=n()'
        select(公司及名稱) %>%  # try to get the "公司名稱" out of the data
        apply( 1, function(y){substr(y, 9, nchar(y))}) %>%  
        as.vector()
}
seo_tse05 <- seo.trans(seo_tse05)
seo_tse06 <- seo.trans(seo_tse06)
seo_tse07 <- seo.trans(seo_tse07)
seo_tse08 <- seo.trans(seo_tse08)
seo_tse09 <- seo.trans(seo_tse09)
seo_tse10 <- seo.trans(seo_tse10)
seo_tse11 <- seo.trans(seo_tse11)
seo_tse12 <- seo.trans(seo_tse12)
seo_tse13 <- seo.trans(seo_tse13)
seo_tse14 <- seo.trans(seo_tse14)
seo_tse15 <- seo.trans(seo_tse15)
seo_tse16 <- seo.trans(seo_tse16)
seo_tse17 <- seo.trans(seo_tse17)
seo_tse18 <- seo.trans(seo_tse18)




### CSR By CommonWealth magazine

#Big Company
b_cwcsr07 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/b_07-18.xlsx", sheet = 1)
b_cwcsr08 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/b_07-18.xlsx", sheet = 2)
b_cwcsr09 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/b_07-18.xlsx", sheet = 3)
b_cwcsr10 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/b_07-18.xlsx", sheet = 4)
b_cwcsr11 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/b_07-18.xlsx", sheet = 5)
b_cwcsr12 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/b_07-18.xlsx", sheet = 6)
b_cwcsr13 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/b_07-18.xlsx", sheet = 7)
b_cwcsr14 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/b_07-18.xlsx", sheet = 8)
b_cwcsr15 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/b_07-18.xlsx", sheet = 9)
b_cwcsr16 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/b_07-18.xlsx", sheet = 10)
b_cwcsr17 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/b_07-18.xlsx", sheet = 11)
b_cwcsr18 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/b_07-18.xlsx", sheet = 12)

csr.trans <-function(x){
    x %>% select(企業) %>%          # extract the column "企業" out of csr
           unlist() %>%             # turn csrlist into general character
           unname() %>%             # make it more pure and simple
           as.vector()
}

b_cwcsr07 <- csr.trans(b_cwcsr07)
b_cwcsr08 <- csr.trans(b_cwcsr08)
b_cwcsr09 <- csr.trans(b_cwcsr09)
b_cwcsr10 <- csr.trans(b_cwcsr10)
b_cwcsr11 <- csr.trans(b_cwcsr11)
b_cwcsr12 <- csr.trans(b_cwcsr12)
b_cwcsr13 <- csr.trans(b_cwcsr13)
b_cwcsr14 <- csr.trans(b_cwcsr14)
b_cwcsr15 <- csr.trans(b_cwcsr15)
b_cwcsr16 <- csr.trans(b_cwcsr16)
b_cwcsr17 <- csr.trans(b_cwcsr17)
b_cwcsr18 <- csr.trans(b_cwcsr18)


# Middle Company
m_cwcsr07 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/m_07-18.xlsx", sheet = 1)
m_cwcsr08 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/m_07-18.xlsx", sheet = 2)
m_cwcsr09 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/m_07-18.xlsx", sheet = 3)
m_cwcsr10 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/m_07-18.xlsx", sheet = 4)
m_cwcsr11 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/m_07-18.xlsx", sheet = 5)
m_cwcsr12 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/m_07-18.xlsx", sheet = 6)
m_cwcsr13 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/m_07-18.xlsx", sheet = 7)
m_cwcsr14 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/m_07-18.xlsx", sheet = 8)
m_cwcsr15 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/m_07-18.xlsx", sheet = 9)
m_cwcsr16 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/m_07-18.xlsx", sheet = 10)
m_cwcsr17 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/m_07-18.xlsx", sheet = 11)
m_cwcsr18 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/m_07-18.xlsx", sheet = 12)


m_cwcsr07 <- csr.trans(m_cwcsr07)
m_cwcsr08 <- csr.trans(m_cwcsr08)
m_cwcsr09 <- csr.trans(m_cwcsr09)
m_cwcsr10 <- csr.trans(m_cwcsr10)
m_cwcsr11 <- csr.trans(m_cwcsr11)
m_cwcsr12 <- csr.trans(m_cwcsr12)
m_cwcsr13 <- csr.trans(m_cwcsr13)
m_cwcsr14 <- csr.trans(m_cwcsr14)
m_cwcsr15 <- csr.trans(m_cwcsr15)
m_cwcsr16 <- csr.trans(m_cwcsr16)
m_cwcsr17 <- csr.trans(m_cwcsr17)
m_cwcsr18 <- csr.trans(m_cwcsr18)







# Small Company
s_cwcsr15 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/s_15-18.xlsx", sheet = 1)
s_cwcsr16 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/s_15-18.xlsx", sheet = 2)
s_cwcsr17 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/s_15-18.xlsx", sheet = 3)
s_cwcsr18 <- read.xlsx("J:/paper_EX/paper/data/rank/cw/s_15-18.xlsx", sheet = 4)



s_cwcsr15 <- csr.trans(s_cwcsr15)
s_cwcsr16 <- csr.trans(s_cwcsr16)
s_cwcsr17 <- csr.trans(s_cwcsr17)
s_cwcsr18 <- csr.trans(s_cwcsr18)




### CSR By Global View magazine

gvmcsr05 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 1)
gvmcsr06 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 2)
gvmcsr07 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 3)
gvmcsr08 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 4)
gvmcsr09 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 5)
gvmcsr10 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 6)
gvmcsr11 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 7)
gvmcsr12 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 8)
gvmcsr13 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 9)
gvmcsr14 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 10)
gvmcsr15 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 11)
gvmcsr16 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 12)
gvmcsr17 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 13)
gvmcsr18 <- read.xlsx("J:/paper_EX/paper/data/rank/gvm/05-18.xlsx", sheet = 14)

gvcsr.trans <-function(x){
    x %>% 
        unlist() %>% 
        unname() %>% 
        na.omit() %>%
        as.vector()
}
 
gvmcsr05 <- gvcsr.trans(gvmcsr05)
gvmcsr06 <- gvcsr.trans(gvmcsr06)
gvmcsr07 <- gvcsr.trans(gvmcsr07)
gvmcsr08 <- gvcsr.trans(gvmcsr08)
gvmcsr09 <- gvcsr.trans(gvmcsr09)
gvmcsr10 <- gvcsr.trans(gvmcsr10)
gvmcsr11 <- gvcsr.trans(gvmcsr11)
gvmcsr12 <- gvcsr.trans(gvmcsr12)
gvmcsr13 <- gvcsr.trans(gvmcsr13)
gvmcsr14 <- gvcsr.trans(gvmcsr14)
gvmcsr15 <- gvcsr.trans(gvmcsr15)
gvmcsr16 <- gvcsr.trans(gvmcsr16)
gvmcsr17 <- gvcsr.trans(gvmcsr17)
gvmcsr18 <- gvcsr.trans(gvmcsr18)




### CSR By TCGI

# TSE
tcgi_tse2014_5 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2014.xlsx", sheet = 1)
tcgi_tse2014_620 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2014.xlsx", sheet = 2)
tcgi_tse2014_notin <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2014.xlsx", sheet = 3)


csr.trans <-function(x){
    x %>% select(簡.稱) %>%          # extract the column "企業" out of csr
        unlist() %>%             # turn csrlist into general character
        unname() %>%             # make it more pure and simple
        as.vector()
}



tcgi_tse2014_5 <- csr.trans(tcgi_tse2014_5)
tcgi_tse2014_620 <- csr.trans(tcgi_tse2014_620)
tcgi_tse2014_notin <- csr.trans(tcgi_tse2014_notin)


tcgi_tse2015_5 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2015.xlsx", sheet = 1)
tcgi_tse2015_620 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2015.xlsx", sheet = 2)
tcgi_tse2015_2135 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2015.xlsx", sheet = 3)
tcgi_tse2015_3650 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2015.xlsx", sheet = 4)
tcgi_tse2015_notin <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2015.xlsx", sheet = 5)


tcgi_tse2015_5 <- csr.trans(tcgi_tse2015_5)
tcgi_tse2015_620 <- csr.trans(tcgi_tse2015_620)
tcgi_tse2015_2135 <- csr.trans(tcgi_tse2015_2135)
tcgi_tse2015_3650 <- csr.trans(tcgi_tse2015_3650)
tcgi_tse2015_notin <- csr.trans(tcgi_tse2015_notin)




tcgi_tse2016_5 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2016.xlsx", sheet = 1)
tcgi_tse2016_620 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2016.xlsx", sheet = 2)
tcgi_tse2016_2135 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2016.xlsx", sheet = 3)
tcgi_tse2016_3650 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2016.xlsx", sheet = 4)
tcgi_tse2016_5165 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2016.xlsx", sheet = 5)
tcgi_tse2016_6680 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2016.xlsx", sheet = 6)
tcgi_tse2016_81100 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2016.xlsx", sheet = 7)
tcgi_tse2016_notin <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2016.xlsx", sheet = 8)

tcgi_tse2016_5 <- csr.trans( tcgi_tse2016_5 )
tcgi_tse2016_620 <- csr.trans( tcgi_tse2016_620 )
tcgi_tse2016_2135 <- csr.trans( tcgi_tse2016_2135 )
tcgi_tse2016_3650 <- csr.trans( tcgi_tse2016_3650 )
tcgi_tse2016_3650 <- csr.trans( tcgi_tse2016_5165 )
tcgi_tse2016_6680 <- csr.trans( tcgi_tse2016_6680 )
tcgi_tse2016_81100 <- csr.trans( tcgi_tse2016_81100 )
tcgi_tse2016_notin <- csr.trans( tcgi_tse2016_notin )

tcgi_tse2017_5 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2017.xlsx", sheet = 1)
tcgi_tse2017_620 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2017.xlsx", sheet = 2)
tcgi_tse2017_2135 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2017.xlsx", sheet = 3)
tcgi_tse2017_3650 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2017.xlsx", sheet = 4)
tcgi_tse2017_5165 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2017.xlsx", sheet = 5)
tcgi_tse2017_6680 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2017.xlsx", sheet = 6)
tcgi_tse2017_81100 <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2017.xlsx", sheet = 7)
tcgi_tse2017_notin <- read.xlsx("J:/paper_EX/paper/data/TCGI/tes/2017.xlsx", sheet = 8)

tcgi_tse2017_5 <- csr.trans( tcgi_tse2017_5 )
tcgi_tse2017_620 <- csr.trans( tcgi_tse2017_620 )
tcgi_tse2017_2135 <- csr.trans( tcgi_tse2017_2135 )
tcgi_tse2017_3650 <- csr.trans( tcgi_tse2017_3650 )
tcgi_tse2017_3650 <- csr.trans( tcgi_tse2017_5165 )
tcgi_tse2017_6680 <- csr.trans( tcgi_tse2017_6680 )
tcgi_tse2017_81100 <- csr.trans( tcgi_tse2017_81100 )
tcgi_tse2017_notin <- csr.trans( tcgi_tse2017_notin )

# OTC

tcgi_otc2014_5 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2014.xlsx", sheet = 1)
tcgi_otc2014_620 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2014.xlsx", sheet = 2)
tcgi_otc2014_notin <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2014.xlsx", sheet = 3)



tcgi_otc2014_5 <- csr.trans( tcgi_otc2014_5 )
tcgi_otc2014_620 <- csr.trans( tcgi_otc2014_620 )
tcgi_otc2014_notin <- csr.trans( tcgi_otc2014_notin )



tcgi_otc2015_5 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2015.xlsx", sheet = 1)
tcgi_otc2015_620 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2015.xlsx", sheet = 2)
tcgi_otc2015_2135 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2015.xlsx", sheet = 3)
tcgi_otc2015_3650 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2015.xlsx", sheet = 4)
tcgi_otc2015_notin <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2015.xlsx", sheet = 5)


tcgi_otc2015_5 <- csr.trans(tcgi_otc2015_5)
tcgi_otc2015_620 <- csr.trans(tcgi_otc2015_620)
tcgi_otc2015_2135 <- csr.trans(tcgi_otc2015_2135)
tcgi_otc2015_3650 <- csr.trans(tcgi_otc2015_3650)
tcgi_otc2015_notin <- csr.trans(tcgi_otc2015_notin)



tcgi_otc2016_5 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2016.xlsx", sheet = 1)
tcgi_otc2016_620 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2016.xlsx", sheet = 2)
tcgi_otc2016_2135 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2016.xlsx", sheet = 3)
tcgi_otc2016_3650 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2016.xlsx", sheet = 4)
tcgi_otc2016_5165 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2016.xlsx", sheet = 5)
tcgi_otc2016_6680 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2016.xlsx", sheet = 6)
tcgi_otc2016_81100 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2016.xlsx", sheet = 7)
tcgi_otc2016_notin <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2016.xlsx", sheet = 8)



tcgi_otc2016_5 <- csr.trans( tcgi_otc2016_5 )
tcgi_otc2016_620 <- csr.trans( tcgi_otc2016_620 )
tcgi_otc2016_2135 <- csr.trans( tcgi_otc2016_2135 )
tcgi_otc2016_3650 <- csr.trans( tcgi_otc2016_3650 )
tcgi_otc2016_3650 <- csr.trans( tcgi_otc2016_5165 )
tcgi_otc2016_6680 <- csr.trans( tcgi_otc2016_6680 )
tcgi_otc2016_81100 <- csr.trans( tcgi_otc2016_81100 )
tcgi_otc2016_notin <- csr.trans( tcgi_otc2016_notin )



tcgi_otc2017_5 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2017.xlsx", sheet = 1)
tcgi_otc2017_620 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2017.xlsx", sheet = 2)
tcgi_otc2017_2135 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2017.xlsx", sheet = 3)
tcgi_otc2017_3650 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2017.xlsx", sheet = 4)
tcgi_otc2017_5165 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2017.xlsx", sheet = 5)
tcgi_otc2017_6680 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2017.xlsx", sheet = 6)
tcgi_otc2017_81100 <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2017.xlsx", sheet = 7)
tcgi_otc2017_notin <- read.xlsx("J:/paper_EX/paper/data/TCGI/otc/2017.xlsx", sheet = 8)




tcgi_otc2017_5 <- csr.trans( tcgi_otc2017_5 )
tcgi_otc2017_620 <- csr.trans( tcgi_otc2017_620 )
tcgi_otc2017_2135 <- csr.trans( tcgi_otc2017_2135 )
tcgi_otc2017_3650 <- csr.trans( tcgi_otc2017_3650 )
tcgi_otc2017_3650 <- csr.trans( tcgi_otc2017_5165 )
tcgi_otc2017_6680 <- csr.trans( tcgi_otc2017_6680 )
tcgi_otc2017_81100 <- csr.trans( tcgi_otc2017_81100 )
tcgi_otc2017_notin <- csr.trans( tcgi_otc2017_notin )







### set back the overlapping part
unlist(lapply(seo_tse14 ,function(x){grep(x,tcgi_tse2015_5,value = F)})) # grep will keep the mathing-pattern element in the csr2list
s2 <- sapply(s ,function(x){grep(x,csr2list,value = F)})





class(csrlist)
s <- as.vector(csrlist)
s1<- unlist(s1); s2<- unlist(s2)
s1<- unname(s1);s2<- unname(s2)
length(s1)
length(s2)





class(tcgi_tse2015_5)
g <- as.vector(seolist)
lapply(csrlist ,function(x){grep(x,seolist,value = F)}) # there is no matched in the seolist

z<- z %>% group_by(公司及名稱) %>% select(公司及名稱)

z<- apply(z, 1, function(x){substr(x, 9, nchar(x))})
z <- unname(z)

