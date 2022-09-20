Esto es cuando un puerto tiene un proceso con uan llamadda pero tu ya apagaste ese proceso, en oasiones siguen con vida y toca darles cuello desde terminal


https://fredriccliver.medium.com/port-8080-is-not-open-on-localhost-could-not-start-firestore-emulator-15c8c367d219


` lsof -i :8080`
primero vemos que rayos esta utilizando el puerto 808y0


despues hacemos un ps y filtramos por el id que nos mande el comando anterior
 ps ax | grep 5676


si el proceso ejecutado hacve alusión al proceso de loq ue esabas corriendo anteriormente, entonces pues procede a darle matarile
kill 5676

en caso contrario ps chale,  reflexionar sobre que hacer
;



a bote pronto:
Si quieres darle matarile sin pensar que proceso es, solo hacer lo siguiente

lsof -ti tcp:8080 | xargs kill






---------------------------------------------------------------




