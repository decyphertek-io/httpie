curl -X POST  \    
-H "Authorization: Bearer cf993148-854b-4f42-bf58-52da49624020"  \    
-H "Content-Type: application/json"  \   
-d '{"query": "query { reports { edges { node { id name description } } } }"}'   \   
"https://opencti.fortifydata.com/graphql"