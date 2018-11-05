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
    interface to [SQLite](https://www.mysql.com/) .
  - The [RPostgreSQL](https://cran.r-project.org/package=RPostgreSQL) package
    provides the interface to [PostgreSQL](https://www.postgresql.org/)
    .
  - The [RSQLite](https://cran.r-project.org/package=RSQLite) package provides the
    interface to [SQLite](http://www.sqlite.org/) .
  - The [bigrquery](https://cran.r-project.org/package=bigrquery) package provides
    the interface to [Google
    BigQuery](https://developers.google.com/bigquery/) .
  - The [MonetDBLite](https://cran.r-project.org/package=MonetDBLite) package
    provides the interface to [MonetDB](https://www.monetdb.org/Home) .

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

</div>

### CRAN packages:

  - [bigrquery](https://cran.r-project.org/package=bigrquery)
  - [elastic](https://cran.r-project.org/package=elastic)
  - [MonetDBLite](https://cran.r-project.org/package=MonetDBLite)
  - [RcppRedis](https://cran.r-project.org/package=RcppRedis)
  - [redux](https://cran.r-project.org/package=redux)
  - [RMariaDB](https://cran.r-project.org/package=RMariaDB)
  - [RPostgreSQL](https://cran.r-project.org/package=RPostgreSQL)
  - [RSQLite](https://cran.r-project.org/package=RSQLite)
  - [uptasticsearch](https://cran.r-project.org/package=uptasticsearch)

### Related links:

  - CRAN Task View:
    [HighPerformanceComputing](HighPerformanceComputing.html)
  - [GitHub repository for this Task
    View](https://github.com/terrytangyuan/ctv-databases)
