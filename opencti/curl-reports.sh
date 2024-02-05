curl -X POST  \    
-H "Authorization: Bearer APIKEY"  \    
-H "Content-Type: application/json"  \   
-d '{"query": "query { reports { edges { node { id name description } } } }"}'   \   
"https://IP-OR-Domain/graphql"