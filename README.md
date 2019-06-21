# galera-haproxy
HAProxy docker image with custom configuration

Dockerized HAProxy with default config file for a three node galera cluster. To ovveride the default configuration it's possible using the environemnt variables.

## Build
```
docker build -t haproxy-mysql .
```

## Run
You need to specify the addresses for DB1 through DB3 as well as passwords for service and monitoring users:
```
docker run -e DB1_ADDRESS=127.0.0.1 -e DB2_ADDRESS=127.0.0.2 -e DB3_ADDRESS=127.0.0.3 haproxy-mysql
```

## Configuration
Config is done through env vars:

| Name                          | Default value       | Description                             |
|-------------------------------|---------------------|-----------------------------------------|
| `DB1_ADDRESS`                 |                     | Address for DB1                 |
| `DB1_PORT`                    | `3306`              | Port for DB1                    |
| `DB2_ADDRESS`                 |                     | Address for DB2                 |
| `DB2_PORT`                    | `3306`              | Port for DB2                    |
| `DB3_ADDRESS`                 |                     | Address for DB3                 |
| `DB3_PORT`                    | `3306`              | Port for DB3                    |
