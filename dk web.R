library(rvest)
library(dplyr)
link <- "https://www.dqindia.com/dq-top20-meet-indias-top-100-it-companies/"
web <-read_html(link)
name <-web %>% html_nodes("tr+ tr td:nth-child(2) span") %>% html_text()
View(name)
revenue <- web %>% html_nodes("tr+ tr td:nth-child(3) span") %>% html_text()
View(revenue)
growth <- web %>% html_nodes("tr+ tr td:nth-child(4) span") %>% html_text()
View(growth )
companies.list<- data.frame(name,revenue,growth)
View(companies.list)
write.csv(companies.list, "top_companies_list.csv")

