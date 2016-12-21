library(httr)
library(jsonlite)


x <- GET("https://sitename.atlassian.net/rest/api/latest/issue/MA-24.json", 
         authenticate(".....@gmail.com", "password", "basic") )


x <- GET("https://sitename.atlassian.net/rest/api/latest/issue/AISD-6903.json", 
         authenticate("test@email.com", "pass", "basic") )


parsed_json <- content(x, "parsed")

parsed_json$fields$summary  #1   Heading/Story Tittle
parsed_json$fields$description   #2   Description

parsed_json$fields$customfield_10500$value   #3   Customer

parsed_json$fields$customfield_11204$value   #4   Product

parsed_json$fields$assignee$displayName   #5 Assignee

parsed_json$fields$customfield_10601$value  #6 Estimated Size

parsed_json$fields$customfield_10007   # 7 Epic Link

parsed_json$fields$labels  # 8 Labels



