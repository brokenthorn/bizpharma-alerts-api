# bizpharma-alerts-api

This is a Web API for an alerts system custom made for BizPharma databases.

## Env vars

Some environment variables need to be set for the API to work.

| VARIABLE           | DESCRIPTION                                    |
| :----------------- | :--------------------------------------------- |
| DB_USERNAME        | SQL Server user                                |
| DB_PASSWORD        | SQL Server user's password                     |
| DB_SERVER          | Database server hostname or IP address         |
| DB_INITIAL_CATALOG | Name of the database to use by default         |
| DB_PORT            | TCP port the database instance is listening on |
| AUTH_BEARER_TOKEN  | Bearer Token used for authorization            |

## Implemented alerts

- [ ] Incorrect trade markup values (_<= 0%_).
  - [ ] With special note when the incorrect trade markup is caused by the global price catalog restricting the selling price to a fixed value.
- [ ] Alarming BBD (_< X zile_), with details of the input document.
- [ ] Atingere KPI per farmacist și per farmacie:
  - [ ] KPI: Vânzarea unei cantități fixe de produs.
  - [ ] KPI: Valoarea medie a bonului.
  - [ ] KPI: Valoare totală vânzare într-o lună.
- [ ] Database LOCKs being held for more than 10 seconds.
- [ ] Numărul de documente din filială este diferit de cel din head office cu mai mult de 5 documente (_aka._ „probleme de replicări de date”).

## Releases

None so far. This is still work in progress.