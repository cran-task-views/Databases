CRAN Task View: Databases with R
--------------------------------

                                                              
**Maintainer:** Yuan Tang                                     
**Contact:**    terrytangyuan at gmail.com                    
**Version:**    2020-05-26                                    
**URL:**        <https://CRAN.R-project.org/view=Databases>   

<div>

This CRAN task view contains a list of packages related to accessibility
of different databases. This does not include data import/export or data
management.

As datasets become larger and larger, it is impossible for people to
save them in traditional file formats such as spreadsheet, raw text
file, etc., which could not fit on devices with limited storage and
could not be easily shared across collaborators. Instead, people
nowadays tend to store data in databases for more scalable and reliable
data management.

Database systems are often classified based on the [database
models](https://en.wikipedia.org/wiki/Database_model) that they support.
[Relational
databases](https://en.wikipedia.org/wiki/Relational_database) became
dominant in the 1980s. The data in relational databases is modeled as
rows and columns in a series of tables with the use of
[SQL](https://en.wikipedia.org/wiki/SQL) to express the logic for
writing and querying data. The tables are relational, e.g. you have a
user who users your softwares and those softwares have creators and
contributors. Non-relational databases became popular in recent years
due to huge demand in storing unstructured data with the use of
[NoSQL](https://en.wikipedia.org/wiki/NoSQL) as the query language.
Users generally don't need to define the data schema up front. If there
are changing requirements in the applications, non-relational databases
can be much easier to use and manage.

The content presented in this Task View are undergoing rapid changes in
industries and academia. Please send any suggestions to the [task view
maintainer](mailto:terrytangyuan@gmail.com) or submit a pull request or
issue to the [Github repository of this task
view](https://github.com/terrytangyuan/ctv-databases) .

The `ctv` package supports these Task Views. Its functions
`install.views` and `update.views` allow, respectively, installation or
update of packages from a given Task View; the option `coreOnly` can
restrict operations to packages labeled as *core* below.

Suggestions and corrections by Achim Zeileis, Kirill Müller, Hannes
Mühleisen, Rich FitzJohn, Dirk Eddelbuettel, and Hadley Wickham (as well
as others I may have forgotten to add here) are gratefully acknowledged.
Thanks to Dirk Eddelbuettel who made the initial `.ctv` file and the
Markdown conversion script available at the Github repository of CRAN
Task View for High Performance Computing
[here](https://github.com/eddelbuettel/ctv-hpc) . Last but not least,
thanks to Achim Zeileis who helped me get started on organizing this
task view.

**Relational Databases**

This section includes packages that provides access to relational
databases within R.

-   The [DBI](https://cran.r-project.org/package=DBI) package provides a database
    interface definition for communication between R and relational
    database management systems. It's worth noting that some packages
    try to follow this interface definition (DBI-compliant) but many
    existing packages don't.
-   The [RODBC](https://cran.r-project.org/package=RODBC) package provides access to
    databases through an ODBC interface.
-   The [RMariaDB](https://cran.r-project.org/package=RMariaDB) package provides a
    DBI-compliant interface to [MariaDB](https://mariadb.org/) and
    [MySQL](https://www.mysql.com/) .
-   The [RMySQL](https://cran.r-project.org/package=RMySQL) package provides the
    interface to MySQL. Note that this is the legacy DBI interface to
    MySQL and MariaDB based on old code ported from S-PLUS. A modern
    MySQL client based on Rcpp is available from the RMariaDB package we
    listed above.
-   Packages for [PostgreSQL](https://www.postgresql.org/) , an
    open-source relational database:
    -   The [RPostgreSQL](https://cran.r-project.org/package=RPostgreSQL) package
        and [RPostgres](https://cran.r-project.org/package=RPostgres) package both
        provide fully DBI-compliant Rcpp-backed interfaces to
        PostgreSQL.
    -   The [rpostgis](https://cran.r-project.org/package=rpostgis) package provides
        the interface to its spatial extension
        [PostGIS](http://postgis.net/) .
    -   The [RGreenplum](https://cran.r-project.org/package=RGreenplum) provides a
        fully DBI-compliant interface to
        [Greenplum](https://greenplum.org/) , an open-source parallel
        database on top of PostgreSQL.
-   The [ROracle](https://cran.r-project.org/package=ROracle) package is a
    DBI-compliant [Oracle
    database](https://www.oracle.com/database/index.html) driver based
    on the OCI. The [ora](https://cran.r-project.org/package=ora) package provides
    convenience functions to query and browse a database through the
    [ROracle](https://cran.r-project.org/package=ROracle) connection.
-   Packages for [SQLite](http://www.sqlite.org/) , a self-contained,
    high-reliability, embedded, full-featured, public-domain, SQL
    database engine:
    -   The [RSQLite](https://cran.r-project.org/package=RSQLite) package embeds the
        SQLite database engine in R and provides an interface compliant
        with the DBI package.
    -   The [filehashSQLite](https://cran.r-project.org/package=filehashSQLite)
        package is a simple key-value database using SQLite as the
        backend.
    -   The [liteq](https://cran.r-project.org/package=liteq) package provides
        temporary and permanent message queues for R, built on top of
        SQLite.
-   The [bigrquery](https://cran.r-project.org/package=bigrquery) package provides
    the interface to [Google
    BigQuery](https://developers.google.com/bigquery/) , Google's fully
    managed, petabyte scale, low cost analytics data warehouse.
-   The [RDruid](https://github.com/druid-io/RDruid) package provides
    the interface to [Apache Druid](https://druid.apache.org/) , a high
    performance analytics data store for event-driven data.
-   The [RH2](https://cran.r-project.org/package=RH2) package provides the interface
    to [H2 Database Engine](http://www.h2database.com/) , the Java SQL
    database.
-   The [influxdbr](https://cran.r-project.org/package=influxdbr) package provides
    the interface to [InfluxDB](https://docs.influxdata.com/influxdb) ,
    a time series database designed to handle high write and query
    loads.
-   The [odbc](https://cran.r-project.org/package=odbc) package provides a
    DBI-compliant interface to drivers of [Open Database Connectivity
    (ODBC)](https://msdn.microsoft.com/en-us/library/ms710252(v=vs.85).aspx)
    , which is a low-level, high-performance interface that is designed
    specifically for relational data stores.
-   The [RPresto](https://cran.r-project.org/package=RPresto) package implements a
    DBI-compliant interface to [Presto](https://prestodb.io/) , an open
    source distributed SQL query engine for running interactive analytic
    queries against data sources of all sizes ranging from gigabytes to
    petabytes.
-   The [RJDBC](https://cran.r-project.org/package=RJDBC) package is an
    implementation of R's DBI interface using JDBC as a back-end. This
    allows R to connect to any DBMS that has a JDBC driver.
-   The [implyr](https://cran.r-project.org/package=implyr) package provides the
    back-end for [Apache Impala](https://impala.apache.org) , which
    enables low-latency SQL queries on data stored in the Hadoop
    Distributed File System (HDFS), Apache HBase, Apache Kudu, Amazon
    Simple Storage Service (S3), Microsoft Azure Data Lake Store (ADLS),
    and Dell EMC Isilon.
-   The [dbx](https://cran.r-project.org/package=dbx) package provides intuitive
    functions for high performance batch operations and safe
    inserts/updates/deletes without writing SQL on top of
    [DBI](https://cran.r-project.org/package=DBI). It is designed for both research
    and production environments and supports multiple database backends
    such as Postgres, MySQL, MariaDB, and SQLite.
-   The [sparklyr](https://cran.r-project.org/package=sparklyr) package provides
    provides a [dplyr](https://cran.r-project.org/package=dplyr) interface to
    [Apache Spark](https://spark.apache.org/) DataFrames as well as an R
    interface to Spark’s distributed machine learning pipelines.
-   The [RClickhouse](https://cran.r-project.org/package=RClickhouse) is a
    [DBI](https://cran.r-project.org/package=DBI) interface for [Yandex
    Clickhouse](https://clickhouse.yandex/) , which is a
    high-performance relational column-store database to enable big data
    exploration and scaling to petabytes of data. It provides basic
    [dplyr](https://cran.r-project.org/package=dplyr) support by auto-generating
    SQL-commands using [dbplyr](https://cran.r-project.org/package=dbplyr).

**Non-Relational Databases**

This section includes packages that provides access to non-relational
databases within R.

-   Packages for [Redis](https://redis.io/) , an open-source, in-memory
    data structure store that can be used as a database, cache and
    message broker:
    -   The [RcppRedis](https://cran.r-project.org/package=RcppRedis) package
        provides interface to Redis using the [hiredis
        library](https://github.com/redis/hiredis) .
    -   The [redux](https://cran.r-project.org/package=redux) package provides a
        low-level interface to Redis, allowing execution of arbitrary
        Redis commands with almost no interface, and a high-level
        generated interface to more than 200 redis commands.
-   Packages for [Elasticsearch](http://elasticsearch.org/) , an
    open-source, RESTful, distributed search and analytics engine:
    -   The [elastic](https://cran.r-project.org/package=elastic) package provides a
        general purpose interface to Elasticsearch.
    -   The [uptasticsearch](https://cran.r-project.org/package=uptasticsearch)
        package is a Elasticsearch client tailored to data science
        workflows.
-   The [mongolite](https://cran.r-project.org/package=mongolite) package provides a
    high-level, high-performance [MongoDB](https://www.mongodb.com/)
    client based on
    [libmongoc](https://github.com/mongodb/mongo-c-driver) , including
    support for aggregation, indexing, map-reduce, streaming, SSL
    encryption and SASL authentication.
-   The [R4CouchDB](https://cran.r-project.org/package=R4CouchDB) package provides a
    collection of functions for basic database and document management
    operations in [CouchDB](http://couchdb.apache.org/) .
-   The [RCassandra](https://cran.r-project.org/package=RCassandra) package provides
    a direct interface (without the use of Java) to the most basic
    functionality of [Apache Cassanda](http://cassandra.apache.org/)
    such as login, updates and queries.
-   The [aws.dynamodb](https://github.com/cloudyr/aws.dynamodb) package
    provides access to [Amazon
    DynamoDB](https://aws.amazon.com/dynamodb/) .
-   The [rrocksdb](https://github.com/mrcsparker/rrocksdb) package
    provides access to [RocksDB](http://rocksdb.org) .

**Databases Tools**

This section includes packages that provides tools for working and
testing with databases, databases table manipulations, etc.

-   The [pool](https://cran.r-project.org/package=pool) package enables the creation
    of object pools, which make it less computationally expensive to
    fetch a new object.
-   The [DBItest](https://cran.r-project.org/package=DBItest) package is a helper
    that tests DBI back ends for conformity to the interface.
-   The [dbfaker](https://cran.r-project.org/package=dbfaker) package is to tool to
    ensure the validity of database writes. It provides a set of
    utilities to analyze and type check the properties of data frames
    that are to be written to databases with SQL support.
-   The [dbplyr](https://cran.r-project.org/package=dbplyr) package is a
    [dplyr](https://cran.r-project.org/package=dplyr) back-end for databases that
    allows you to work with remote database tables as if they are
    in-memory data frames. Basic features works with any database that
    has a DBI back-end; more advanced features require SQL translation
    to be provided by the package author.
-   The [sqldf](https://cran.r-project.org/package=sqldf) package provides
    functionalities to manipulate R Data Frames Using SQL.
-   The [pointblank](https://cran.r-project.org/package=pointblank) package provides
    tools to validate data tables in databases such as PostgreSQL and
    MySQL.
-   The [TScompare](https://cran.r-project.org/package=TScompare) package provides
    utilities for comparing the equality of series on two databases.
-   The [dittodb](https://cran.r-project.org/package=dittodb) package provides
    functionality to test database interactions with any
    [DBI](https://cran.r-project.org/package=DBI) compliant database backend. It
    includes functionality to use fixtures instead of direct database
    calls during testing as well as functionality to record those
    fixtures when interacting with a real database for later use in
    tests.

</div>

### CRAN packages:

-   [bigrquery](https://cran.r-project.org/package=bigrquery)
-   [dbfaker](https://cran.r-project.org/package=dbfaker)
-   [DBI](https://cran.r-project.org/package=DBI) (core)
-   [DBItest](https://cran.r-project.org/package=DBItest)
-   [dbplyr](https://cran.r-project.org/package=dbplyr)
-   [dbx](https://cran.r-project.org/package=dbx)
-   [dittodb](https://cran.r-project.org/package=dittodb)
-   [dplyr](https://cran.r-project.org/package=dplyr)
-   [elastic](https://cran.r-project.org/package=elastic)
-   [filehashSQLite](https://cran.r-project.org/package=filehashSQLite)
-   [implyr](https://cran.r-project.org/package=implyr)
-   [influxdbr](https://cran.r-project.org/package=influxdbr)
-   [liteq](https://cran.r-project.org/package=liteq)
-   [mongolite](https://cran.r-project.org/package=mongolite)
-   [odbc](https://cran.r-project.org/package=odbc) (core)
-   [ora](https://cran.r-project.org/package=ora)
-   [pointblank](https://cran.r-project.org/package=pointblank)
-   [pool](https://cran.r-project.org/package=pool)
-   [R4CouchDB](https://cran.r-project.org/package=R4CouchDB)
-   [RCassandra](https://cran.r-project.org/package=RCassandra)
-   [RClickhouse](https://cran.r-project.org/package=RClickhouse)
-   [RcppRedis](https://cran.r-project.org/package=RcppRedis)
-   [redux](https://cran.r-project.org/package=redux)
-   [RGreenplum](https://cran.r-project.org/package=RGreenplum)
-   [RH2](https://cran.r-project.org/package=RH2)
-   [RJDBC](https://cran.r-project.org/package=RJDBC)
-   [RMariaDB](https://cran.r-project.org/package=RMariaDB)
-   [RMySQL](https://cran.r-project.org/package=RMySQL)
-   [RODBC](https://cran.r-project.org/package=RODBC)
-   [ROracle](https://cran.r-project.org/package=ROracle)
-   [rpostgis](https://cran.r-project.org/package=rpostgis)
-   [RPostgres](https://cran.r-project.org/package=RPostgres)
-   [RPostgreSQL](https://cran.r-project.org/package=RPostgreSQL)
-   [RPresto](https://cran.r-project.org/package=RPresto)
-   [RSQLite](https://cran.r-project.org/package=RSQLite)
-   [sparklyr](https://cran.r-project.org/package=sparklyr)
-   [sqldf](https://cran.r-project.org/package=sqldf)
-   [TScompare](https://cran.r-project.org/package=TScompare)
-   [uptasticsearch](https://cran.r-project.org/package=uptasticsearch)

### Related links:

-   CRAN Task View: [ModelDeployment](ModelDeployment.html)
-   CRAN Task View:
    [HighPerformanceComputing](HighPerformanceComputing.html)
-   [Github repository of CRAN Task View for High Performance
    Computing](https://github.com/eddelbuettel/ctv-hpc)
-   [GitHub repository for this Task
    View](https://github.com/terrytangyuan/ctv-databases)
