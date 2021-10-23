# Getting Started

Docker will be requried for this project

## Setting up DB

To start developing with DB, you should run the docker-compose file in the `sql` folder. To do this, you can run:

```bash
docker-compose -f sql/docker-compose.yml up
```

You will then be able to access PGAdmin on your local machine at [PGAdmin](http://localhost:5050)

The following details should be used for creating a new connection.

```yaml
hostname: postgres_container
port: 5432
username: postgres
password: changeme

```
