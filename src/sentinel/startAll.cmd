start cmd.exe /e:on /k "redis\redis-server redis-6380\redis.windows.conf" 
start cmd.exe /e:on /k "redis\redis-server redis-6381\redis.windows.conf" 
start cmd.exe /e:on /k "redis\redis-server redis-6382\redis.windows.conf" 

start cmd.exe /e:on /k "redis\redis-server redis-6380\sentinel.conf --sentinel" 
start cmd.exe /e:on /k "redis\redis-server redis-6381\sentinel.conf --sentinel" 
start cmd.exe /e:on /k "redis\redis-server redis-6382\sentinel.conf --sentinel" 

pause

redis\redis-cli -p 26380 sentinel masters 
