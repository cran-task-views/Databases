---
name: Databases
topic: Databases with R
maintainer: Yuan Tang, James Joseph Balamuta
email: terrytangyuan@gmail.com
version: 2023-02-23
source: https://github.com/cran-task-views/Databases/
---

This CRAN task view contains a list of packages related to accessibility
of different databases. This does not include data import/export or data
management. Moreover, the task view on `r view("HighPerformanceComputing")`
and `r view("MachineLearning")` might provide useful information.

As datasets become larger and larger, it is impossible for people to
save them in traditional file formats such as spreadsheet, raw text
file, etc., which could not fit on devices with limited storage and
could not be easily shared across collaborators. Instead, people
nowadays tend to store data in databases for more scalable and reliable
data management.

Database systems are often classified based on the
[database models](https://en.wikipedia.org/wiki/Database_model)
that they support.
[Relational databases](https://en.wikipedia.org/wiki/Relational_database)
became dominant in the 1980s. The data in relational databases is modeled as
rows and columns in a series of tables with the use of
[SQL](https://en.wikipedia.org/wiki/SQL) to express the logic for
writing and querying data. The tables are relational, e.g. you have a
user who uses your softwares and those softwares have creators and
contributors. Non-relational databases became popular in recent years
due to huge demand in storing unstructured data with the use of
[NoSQL](https://en.wikipedia.org/wiki/NoSQL) as the query language.
Users generally don't need to define the data schema up front. If there
are changing requirements in the applications, non-relational databases
can be much easier to use and manage.

The content presented in this task view is undergoing rapid
changes in industries and academia. Please send any suggestions to the
maintainer via e-mail or submit an issue or pull request in the GitHub
repository linked above. All suggestions and corrections by others are
gratefully acknowledged.


### Relational databases

This section includes packages that provides access to relational
databases within R.

- The `r pkg("DBI", priority = "core")` package provides a
  database interface definition for communication between R and
  relational database management systems. It's worth noting that some
  packages try to follow this interface definition (DBI-compliant) but
  many existing packages don't.
- The `r pkg("RODBC", priority = "core")` package provides access to
  databases through an ODBC interface. This package is maintained by the
  R Core Team and depends only on base R. See alternative odbc package
  below.
- The `r pkg("odbc", priority = "core")` package provides a
  DBI-compliant interface to ODBC drivers. This package is maintained by
  RStudio and has a number of package dependencies. See alternative
  RODBC package above.
- The `r pkg("RMariaDB")` package provides a DBI-compliant
  interface to [MariaDB](https://mariadb.org/) and
  [MySQL](https://www.mysql.com/).
- The `r pkg("RMySQL")` package provides the interface to
  MySQL. Note that this is the legacy DBI interface to MySQL and
  MariaDB based on old code ported from S-PLUS. A modern MySQL client
  based on Rcpp is available from the RMariaDB package we listed
  above.
- Packages for [PostgreSQL](https://www.postgresql.org/), an
  open-source relational database:
  - The `r pkg("RPostgreSQL")` package and
    `r pkg("RPostgres")` package both provide fully
    DBI-compliant Rcpp-backed interfaces to PostgreSQL.
  - The `r pkg("rpostgis")` package provides the
    interface to its spatial extension
    [PostGIS](http://postgis.net/).
  - The `r pkg("RGreenplum")` provides a fully
    DBI-compliant interface to [Greenplum](https://greenplum.org/),
    an open-source parallel database on top of PostgreSQL.
- The `r pkg("ROracle")` package is a DBI-compliant
  [Oracle database](https://www.oracle.com/database/) driver
  based on the OCI. 
- Packages for [SQLite](http://www.sqlite.org/), a self-contained,
  high-reliability, embedded, full-featured, public-domain, SQL
  database engine:
  -   The `r pkg("RSQLite")` package embeds the SQLite
      database engine in R and provides an interface compliant with
      the DBI package.
  -   The `r pkg("filehashSQLite")` package is a simple
      key-value database using SQLite as the backend.
  -   The `r pkg("liteq")` package provides temporary and
      permanent message queues for R, built on top of SQLite.
- The `r pkg("duckdb")` package provides a DBI interface to [DuckDb](https://duckdb.org/),
  an in-process SQL OLAP database management system.
- The `r pkg("bigrquery")` package provides the interface
  to [Google BigQuery](https://developers.google.com/bigquery/),
  Google's fully managed, petabyte scale, low cost analytics data
  warehouse.
- The `r github("druid-io/RDruid")` package on GitHub
  provides the interface to [Apache Druid](https://druid.apache.org/),
  a high performance analytics data store for event-driven data.
- The `r pkg("RH2")` package provides the interface to [H2
  Database Engine](http://www.h2database.com/), the Java SQL
  database.
- The `r pkg("influxdbr")` package provides the interface
  to [InfluxDB](https://docs.influxdata.com/influxdb), a time series
  database designed to handle high write and query loads.
- The `r pkg("RPresto")` package implements a
  DBI-compliant interface to [Presto](https://prestodb.io/), an open
  source distributed SQL query engine for running interactive analytic
  queries against data sources of all sizes ranging from gigabytes to
  petabytes.
- The `r pkg("RJDBC")` package is an implementation of
  R's DBI interface using JDBC as a back-end. This allows R to
  connect to any DBMS that has a JDBC driver.
- The `r pkg("implyr")` package provides the back-end for
  [Apache Impala](https://impala.apache.org), which enables
  low-latency SQL queries on data stored in the Hadoop Distributed
  File System (HDFS), Apache HBase, Apache Kudu, Amazon Simple Storage
  Service (S3), Microsoft Azure Data Lake Store (ADLS), and Dell EMC
  Isilon.
- The `r pkg("dbx")` package provides intuitive functions
  for high performance batch operations and safe
  inserts/updates/deletes without writing SQL on top of
  `r pkg("DBI")`. It is designed for both research and
  production environments and supports multiple database backends such
  as Postgres, MySQL, MariaDB, and SQLite.
- The `r pkg("sparklyr")` package provides provides a
  `r pkg("dplyr")` interface to [Apache
  Spark](https://spark.apache.org/) DataFrames as well as an R
  interface to Spark's distributed machine learning pipelines.
- The `r pkg("Hmisc")` provides a wrapper function `Hmisc::mdb.get()`
  that uses the [mdbtools](https://github.com/mdbtools/mdbtools) utility
  to read from Microsoft Access database on Unix-alike systems.
- The `r pkg("DatabaseConnector")` provides a DBI compatible interface 
  to various database platforms using either JDBC or DBI drivers.

### Non-relational databases

This section includes packages that provides access to non-relational
databases within R.

- Packages for [Redis](https://redis.io/), an open-source, in-memory
  data structure store that can be used as a database, cache and
  message broker:
  - The `r pkg("RcppRedis")` package provides interface
    to Redis using `r github("redis/hiredis")`.
  - The `r pkg("redux")` package provides a low-level
    interface to Redis, allowing execution of arbitrary Redis
    commands with almost no interface, and a high-level generated
    interface to more than 200 redis commands.
- Packages for [Elasticsearch](http://elasticsearch.org/), an
  open-source, RESTful, distributed search and analytics engine:
  - The `r pkg("elastic")` package provides a general
    purpose interface to Elasticsearch.
  - The `r pkg("uptasticsearch")` package is a
    Elasticsearch client tailored to data science workflows.
- The `r pkg("mongolite")` package provides a high-level,
  high-performance [MongoDB](https://www.mongodb.com/) client based on
  `r github("mongodb/mongo-c-driver")`, including support
  for aggregation, indexing, map-reduce, streaming, SSL encryption and
  SASL authentication.
- The `r pkg("R4CouchDB")` package provides a collection
  of functions for basic database and document management operations
  in [CouchDB](http://couchdb.apache.org/).
- Packages for [Amazon
  DynamoDB](https://aws.amazon.com/dynamodb/), a fast, flexible NoSQL database
  - The `r github("cloudyr/aws.dynamodb")` package on GitHub provides access to inside from 
    the `cloudyr` development team.
  - The `r pkg("paws.database")` package provides an interface using the `r pkg("paws")` suite of tools.
- The `r github("mrcsparker/rrocksdb")` package on GitHub
  provides access to [RocksDB](http://rocksdb.org).


### Database tools

This section includes packages that provides tools for working and
testing with databases, database table manipulations, etc.

- The `r pkg("MSSQL")` package extends the functionality of the RODBC
  package to work with Microsoft SQL Server databases. Makes it easier
  to browse the database and examine individual tables and views.
- The `r pkg("pool")` package enables the creation of
  object pools, which make it less computationally expensive to fetch
  a new object.
- The `r pkg("DBItest")` package is a helper that tests
  DBI back ends for conformity to the interface.
- The `r pkg("dbplyr")` package is a
  `r pkg("dplyr")` back-end for databases that allows you
  to work with remote database tables as if they are in-memory data
  frames. Basic features works with any database that has a DBI
  back-end; more advanced features require SQL translation to be
  provided by the package author.
- The `r pkg("sqldf")` package provides functionalities to
  manipulate R Data Frames Using SQL.
- The `r pkg("pointblank")` package provides tools to
  validate data tables in databases such as PostgreSQL and MySQL.
- The `r pkg("dittodb")` package provides functionality to
  test database interactions with any `r pkg("DBI")`
  compliant database backend. It includes functionality to use
  fixtures instead of direct database calls during testing as well as
  functionality to record those fixtures when interacting with a real
  database for later use in tests.
- The `r pkg("tfio")` package provides the ability to use
  [Apache Ignite](https://ignite.apache.org/), which handles
  distributed database management for high-performance computing
  with in-memory speed.
- The `r github("daroczig/dbr")` package on GitHub
  provides convenient database connections and queries from R
  using YAML configuration files and templates.
- The `r pkg("rocker")` package provides a `r pkg("R6")` class interface
  for handling relational database connections using `r pkg("DBI")` as backend.
  The purpose is having an intuitive object allowing straightforward
  handling of SQL databases.
- The `r pkg("SQRL")` package streamlines exploratory and interactive sessions
  on ODBC databases, and allows R code within SQL scripts.
- The `r pkg("octopus")` package provides an interactive shiny application for 
  database management to view tables and schemas, upload files, send queries,
  and more. 


### Links

* [DBI package web page](https://dbi.r-dbi.org/)
* [RStudio: Databases using R](https://db.rstudio.com/)
* [Open Database Connectivity
  (ODBC)](https://docs.microsoft.com/en-us/sql/odbc/)
