## CRAN Task View: Databases with R

|                 |                                               
| --------------- | -------------------------------------------   
| **Maintainer:** | Yuan Tang                                     
| **Contact:**    | terrytangyuan at gmail.com                    
| **Version:**    | 2018-11-05                                    
| **URL:**        | <https://CRAN.R-project.org/view=Databases>   

<div>

This CRAN task view contains a list of packages that provide access to
different databases.

Description for diffrent types of databases:

  - Relational databases.
  - Non-relational databases.

Many of the areas discussed in this Task View are undergoing rapid
changes in industries and academia. Please send any suggestions to the
[task view maintainer](mailto:terrytangyuan@gmail.com) or submit a pull
request or issue to the [Github repository of this task
view](https://github.com/terrytangyuan/ctv-databases) .

**Relational Databases**

This section includes packages that provides access to relational
databases within R.

  - The [RMariaDB](https://cran.r-project.org/package=RMariaDB) package provides the
    interface to [MariaDB](https://mariadb.org/) and
    [MySQL](https://www.mysql.com/) .
  - The [RMySQL](https://cran.r-project.org/package=RMySQL) package provides the
    interface to MySQL.
  - The [RPostgreSQL](https://cran.r-project.org/package=RPostgreSQL) package
    provides the interface to [PostgreSQL](https://www.postgresql.org/)
    . There's also PostGIS [rpostgis](https://cran.r-project.org/package=rpostgis)
    package which provides interface to its spatial extension
    [PostGIS](http://postgis.net/) .
  - The [ROracle](https://cran.r-project.org/package=ROracle) package is a
    DBI-compliant [Oracle
    database](https://www.oracle.com/database/index.html) driver based
    on the OCI.
  - The [RSQLite](https://cran.r-project.org/package=RSQLite) package provides the
    interface to [SQLite](http://www.sqlite.org/) .
  - The [bigrquery](https://cran.r-project.org/package=bigrquery) package provides
    the interface to [Google
    BigQuery](https://developers.google.com/bigquery/) .
  - [MonetDBLite](https://cran.r-project.org/package=MonetDBLite) and
    [MonetDB.R](https://cran.r-project.org/package=MonetDB.R) packages provide the
    interface to [MonetDB](https://www.monetdb.org/Home) .
  - The [RDruid](https://github.com/druid-io/RDruid) package provides
    the interface to [Apache Druid](http://druid.io/) , a high
    performance analytics data store for event-driven data.
  - The [RH2](https://cran.r-project.org/package=RH2) package provides the interface
    to [H2 Database Engine](http://www.h2database.com/) , the Java SQL
    database.
  - The [influxdbr](https://cran.r-project.org/package=influxdbr) package provides
    the interface to [InfluxDB](https://docs.influxdata.com/influxdb) ,
    a time series database designed to handle high write and query
    loads.

**Non-relational Databases**

This section includes packages that provides access to non-relational
databases within R.

  - Packages for [Redis](https://redis.io/) :
      - The [RcppRedis](https://cran.r-project.org/package=RcppRedis) package
        provides interface to Redis using the [hiredis
        library](https://github.com/redis/hiredis) .
      - The [redux](https://cran.r-project.org/package=redux) package provides a
        low-level interface to Redis, allowing execution of arbitrary
        Redis commands with almost no interface.
  - Packages for [Elasticsearch](http://elasticsearch.org/) :
      - The [elastic](https://cran.r-project.org/package=elastic) package provides a
        general purpose interface to Elasticsearch.
      - The [uptasticsearch](https://cran.r-project.org/package=uptasticsearch)
        package is a Elasticsearch client tailored to data science
        workflows.
  - The [mongolite](https://cran.r-project.org/package=mongolite) package provides a
    high-level, high-performance [MongoDB](https://www.mongodb.com/)
    client based on
    [libmongoc](https://github.com/mongodb/mongo-c-driver) , including
    support for aggregation, indexing, map-reduce, streaming, SSL
    encryption and SASL authentication.
  - The [R4CouchDB](https://cran.r-project.org/package=R4CouchDB) package provides a
    collection of functions for basic database and document management
    operations in [CouchDB](http://couchdb.apache.org/) .
  - The [RCassandra](https://cran.r-project.org/package=RCassandra) package provides
    a direct interface (without the use of Java) to the most basic
    functionality of [Apache Cassanda](http://cassandra.apache.org/)
    such as login, updates and queries.
  - The [aws.dynamodb](https://github.com/cloudyr/aws.dynamodb) package
    provides access to [Amazon
    DynamoDB](https://aws.amazon.com/dynamodb/) .
  - The [rrocksdb](https://github.com/mrcsparker/rrocksdb) package
    provides access to [RocksDB](http://rocksdb.org) .

</div>

### CRAN packages:

  - [bigrquery](https://cran.r-project.org/package=bigrquery)
  - [elastic](https://cran.r-project.org/package=elastic)
  - [influxdbr](https://cran.r-project.org/package=influxdbr)
  - [MonetDB.R](https://cran.r-project.org/package=MonetDB.R)
  - [MonetDBLite](https://cran.r-project.org/package=MonetDBLite)
  - [mongolite](https://cran.r-project.org/package=mongolite)
  - [R4CouchDB](https://cran.r-project.org/package=R4CouchDB)
  - [RCassandra](https://cran.r-project.org/package=RCassandra)
  - [RcppRedis](https://cran.r-project.org/package=RcppRedis)
  - [redux](https://cran.r-project.org/package=redux)
  - [RH2](https://cran.r-project.org/package=RH2)
  - [RMariaDB](https://cran.r-project.org/package=RMariaDB)
  - [RMySQL](https://cran.r-project.org/package=RMySQL)
  - [ROracle](https://cran.r-project.org/package=ROracle)
  - [rpostgis](https://cran.r-project.org/package=rpostgis)
  - [RPostgreSQL](https://cran.r-project.org/package=RPostgreSQL)
  - [RSQLite](https://cran.r-project.org/package=RSQLite)
  - [uptasticsearch](https://cran.r-project.org/package=uptasticsearch)

### Related links:

  - CRAN Task View:
    [HighPerformanceComputing](HighPerformanceComputing.html)
  - [GitHub repository for this Task
    View](https://github.com/terrytangyuan/ctv-databases)
