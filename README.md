## CRAN Task View: Model Deployment with R

|                 |                                                     
| --------------- | -------------------------------------------------   
| **Maintainer:** | Yuan Tang                                           
| **Contact:**    | terrytangyuan at gmail.com                          
| **Version:**    | 2018-05-01                                          
| **URL:**        | <https://CRAN.R-project.org/view=ModelDeployment>   

<div>

This CRAN task view contains a list of packages, grouped by topic, that
provides functionalities to streamline the process of deploying models
to various environments, such as mobile devices, edge devices, cloud,
and GPUs, for scoring or inferencing on new data.

Model deployment is often challenging due to various reasons. Some
example challenges are:

  - It involves deploying models on heterogenous environments, e.g. edge
    devices, mobile devices, GPUs, etc.
  - It is hard to compress the model to very small size that could fit
    on devices with limited storage while keeping the same precision and
    minimizing the overhead to load the model for inference.
  - Deployed models sometimes need to process new data records within
    limited memory on small devices.
  - Many deployment environments have bad network connectivity so
    sometimes cloud solutions may not meet the requirements.
  - There's interest in stronger user data privacy paradigms where user
    data does not need to leave the mobile device.
  - There's growing demand to perform on-device model-based data
    filtering before collecting the data.

Many of the areas discussed in this Task View are undergoing rapid
changes in industries and academia. Please send any suggestions to the
[task view maintainer](mailto:terrytangyuan@gmail.com) or submit a pull
request or issue to the [Github repository of this task
view](https://github.com/terrytangyuan/ctv-model-deployment).

Suggestions and corrections by Achim Zeileis and Dirk Eddelbuettel (as
well as others I may have forgotten to add here) are gratefully
acknowledged.

**Deployment through Different Types of Artifacts**

This section includes packages that provides functionalities to export
the trained model to an artifact that could fit in small devices such as
mobile devices (e.g. Android, iOS) and edge devices (Rasberri Pi). These
packages are built based on different model format.

  - Predictive Model Markup Language (PMML) is an XML-based language
    which provides a way for applications to define statistical and data
    mining models and to share models between PMML compliant
    applications. The following packages are based on PMML:
      - The [pmml](https://cran.r-project.org/package=pmml) package provides the
        main interface to PMML.
      - The
        [pmmlTransformations](https://cran.r-project.org/package=pmmlTransformations)
        package allows for data to be transformed before using it to
        construct models. Builds structures to allow functions in the
        PMML package to output transformation details in addition to the
        model in the resulting PMML file.
      - The [rattle](https://cran.r-project.org/package=rattle) package allows to
        load data from a CSV file (or via ODBC), transform and explore
        the data, build and evaluate models, and export models as PMML
        or as scores.
      - The [arules](https://cran.r-project.org/package=arules) package provides the
        infrastructure for representing, manipulating and analyzing
        transaction data and patterns (frequent itemsets and association
        rules). The associations can be written to disk in PMML.
      - The [arulesSequences](https://cran.r-project.org/package=arulesSequences)
        package is an add-on for arules to handle and mine frequent
        sequences.
      - The [arulesCBA](https://cran.r-project.org/package=arulesCBA) package
        provides a function to build an association rule-based
        classifier for data frames, and to classify incoming data frames
        using such a classifier.
  - Plain Old Java Object (POJO) or a Model Object, Optimized (MOJO) are
    intended to be easily embeddable in any Java environment. The only
    compilation and runtime dependency for a generated model is a
    h2o-genmodel.jar file produced as the build output of these
    packages. The [h2o](https://cran.r-project.org/package=h2o) package provides
    easy-to-use interface to build a wide range of machine learning
    models, such as GLM, DRF, and XGBoost models based on
    [xgboost](https://cran.r-project.org/package=xgboost) package, which can then be
    exported as MOJO and POJO format. The MOJO and POJO artifacts can
    then be loaded by its REST interface as well as different language
    bindings, e.g. Java, Scala, R, and Python.
  - Portable Format for Analytics (PFA) is a specification for
    event-based processors that perform predictive or analytic
    calculations and is aimed at helping smooth the transition from
    statistical model development to large-scale and/or online
    production. PFA combines the ease of portability across systems with
    algorithmic flexibility: models, pre-processing, and post-processing
    are all functions that can be arbitrarily composed, chained, or
    built into complex workflows. The
    [aurelius](https://cran.r-project.org/package=aurelius) package provides tools
    for converting R objects and syntax into the PFA format.
  - [TensorFlow](https://www.tensorflow.org/) 's SavedModel as well
    as its optimized version [TensorFlow
    Lite](https://www.tensorflow.org/mobile/tflite/), which uses many
    techniques for achieving low latency such as optimizing the kernels
    for mobile apps, pre-fused activations, and quantized kernels that
    allow smaller and faster (fixed-point math) models. It enables
    on-device machine learning inference with low latency and small
    binary size. The packages listed below can produce models in this
    format. Note that these packages are R wrappers of their
    corresponding Python API based on the
    [reticulate](https://cran.r-project.org/package=reticulate) package. Though
    Python binary is required for creating the models, it's not required
    during inference time for deployment.
      - The [tensorflow](https://cran.r-project.org/package=tensorflow) package
        provides full access to TensorFlow API for numerical computation
        using data flow graphs.
      - The [tfestimators](https://cran.r-project.org/package=tfestimators) package
        provides high-level API to machine learning models as well as
        highly customized neural network architectures.
      - The [keras](https://cran.r-project.org/package=keras) package high-level API
        to construct different types of neural networks.
  - The [onnx](https://cran.r-project.org/package=onnx) package provides the
    interface to [Open Neural Network Exchange (ONNX)](https://onnx.ai/)
    which is a standard format for models built using different
    frameworks (e.g. TensorFlow, MXNet, PyTorch, CNTK, etc). It defines
    an extensible computation graph model, as well as definitions of
    built-in operators and standard data types. Models trained in one
    framework can be easily transferred to another framework for
    inference. This open source format enables the interoperability
    between different frameworks and streamlining the path from research
    to production will increase the speed of innovation in the AI
    community. Note that this package is based on the
    [reticulate](https://cran.r-project.org/package=reticulate) package to interface
    with the original Python API so Python binary is required for
    deployment.
  - The [mleap](https://cran.r-project.org/package=mleap) package is a
    [sparklyr](https://cran.r-project.org/package=sparklyr) extension that provides
    an interface to [MLeap](https://github.com/combust/mleap). MLeap is
    an open source library that enables the persistence of [Apache
    Spark](https://spark.apache.org/) ML pipelines and subsequent
    deployment in any Java-enabled device or service. At runtime, in
    addition to the serialized model file, the dependencies are a Java
    Virtual Machine (JVM) and the MLeap Runtime, and a Spark cluster is
    not required.

**Deployment through Cloud/Server**

Many deployment environments are based on cloud/server. The following
packages provides functionalities to deploy models in those types of
environments:

  - The [yhatr](https://cran.r-project.org/package=yhatr) package allows to deploy,
    maintain, and invoke models via the [Yhat](https://www.yhat.com)
    REST API.
  - The [cloudml](https://github.com/rstudio/cloudml) package provides
    functionality to easily deploy models to [Google Cloud ML
    Engine](https://cloud.google.com/ml-engine/).
  - The [tfdeploy](https://github.com/rstudio/tfdeploy) package provides
    functions to run a local test server that supports the same REST API
    as CloudML and [RStudio
    Connect](https://www.rstudio.com/products/connect/).
  - The [domino](https://cran.r-project.org/package=domino) package provides R
    interface to [Domino](https://www.dominodatalab.com/) CLI, a service
    that makes it easy to run your code on scalable hardware, with
    integrated version control and collaboration features designed for
    analytical workflows.
  - The [tidypredict](https://cran.r-project.org/package=tidypredict) package
    provides functionalities to run predictions inside database. It's
    based on [dplyr](https://cran.r-project.org/package=dplyr) and
    [dbplyr](https://cran.r-project.org/package=dbplyr) that could translate data
    manipulations written in R to database queries that can be used
    later to execute the data transformations and aggregations inside
    various types of databases.
  - The [ibmdbR](https://cran.r-project.org/package=ibmdbR) package allows many
    basic and complex R operations to be pushed down into the database,
    which removes the main memory boundary of R and allows to make full
    use of parallel processing in the underlying database.
  - The [sparklyr](https://cran.r-project.org/package=sparklyr) package provides
    bindings to [Apache Spark](https://spark.apache.org/) 's distributed
    machine learning library and allows to deploy the trained models to
    clusters. Additionally, the
    [rsparkling](https://cran.r-project.org/package=rsparkling) package uses
    [sparklyr](https://cran.r-project.org/package=sparklyr) for Spark job deployment
    while using [h2o](https://cran.r-project.org/package=h2o) package for regular
    model building.
  - The [AzureML](https://cran.r-project.org/package=AzureML) package contains
    functions and datasets to support [Azure Machine
    Learning](https://azure.microsoft.com/en-us/overview/machine-learning/).
    This allows you to interact with datasets, as well as publish and
    consume R functions as API services.
  - The
    [mrsdeploy](https://docs.microsoft.com/en-us/machine-learning-server/r-reference/mrsdeploy/mrsdeploy-package)
    package provides functions for establishing a remote session in a
    console application and for publishing and managing a web service
    that is backed by the R code block or script you provided.
  - The [opencpu](https://cran.r-project.org/package=opencpu) package provides a
    server that exposes a simple but powerful HTTP API for RPC and data
    interchange with R. This provides a reliable and scalable foundation
    for statistical services or building R web applications.
  - Several general purpose server/client frameworks for R exist that
    could help deploy models in server based environments:
      - The [Rserve](https://cran.r-project.org/package=Rserve) and
        [RSclient](https://cran.r-project.org/package=RSclient) packages both
        provide server and client functionality for TCP/IP or local
        socket interfaces to enable access to R from many languages and
        systems.
      - The [httpuv](https://cran.r-project.org/package=httpuv) package provides a
        low-level socket and protocol support for handling HTTP and
        WebSocket requests directly within R.
  - Several packages offer functionality for turning R code into a web
    API:
      - The [jug](https://cran.r-project.org/package=jug) package is a simple
        API-builder web framework, built around
        [httpuv](https://cran.r-project.org/package=httpuv).
      - The [FastRWeb](https://cran.r-project.org/package=FastRWeb) package provides
        some basic infrastructure for this. plumber allows you to create
        a REST API by decorating existing R source code.
      - The [plumber](https://cran.r-project.org/package=plumber) package allows you
        to create a web API by merely decorating your existing R source
        code with special comments.
      - The [RestRserve](https://github.com/dselivanov/RestRserve)
        package is a R web API framework for building high-performance
        microservices and app backends based on
        [Rserve](https://cran.r-project.org/package=Rserve).

</div>

### CRAN packages:

  - [arules](https://cran.r-project.org/package=arules)
  - [arulesCBA](https://cran.r-project.org/package=arulesCBA)
  - [arulesSequences](https://cran.r-project.org/package=arulesSequences)
  - [aurelius](https://cran.r-project.org/package=aurelius)
  - [AzureML](https://cran.r-project.org/package=AzureML)
  - [dbplyr](https://cran.r-project.org/package=dbplyr)
  - [domino](https://cran.r-project.org/package=domino)
  - [dplyr](https://cran.r-project.org/package=dplyr)
  - [FastRWeb](https://cran.r-project.org/package=FastRWeb)
  - [h2o](https://cran.r-project.org/package=h2o)
  - [httpuv](https://cran.r-project.org/package=httpuv)
  - [ibmdbR](https://cran.r-project.org/package=ibmdbR)
  - [jug](https://cran.r-project.org/package=jug)
  - [keras](https://cran.r-project.org/package=keras)
  - [mleap](https://cran.r-project.org/package=mleap)
  - [onnx](https://cran.r-project.org/package=onnx)
  - [opencpu](https://cran.r-project.org/package=opencpu)
  - [plumber](https://cran.r-project.org/package=plumber)
  - [pmml](https://cran.r-project.org/package=pmml)
  - [pmmlTransformations](https://cran.r-project.org/package=pmmlTransformations)
  - [rattle](https://cran.r-project.org/package=rattle)
  - [reticulate](https://cran.r-project.org/package=reticulate)
  - [RSclient](https://cran.r-project.org/package=RSclient)
  - [Rserve](https://cran.r-project.org/package=Rserve)
  - [rsparkling](https://cran.r-project.org/package=rsparkling)
  - [sparklyr](https://cran.r-project.org/package=sparklyr)
  - [tensorflow](https://cran.r-project.org/package=tensorflow)
  - [tfestimators](https://cran.r-project.org/package=tfestimators)
  - [tidypredict](https://cran.r-project.org/package=tidypredict)
  - [xgboost](https://cran.r-project.org/package=xgboost)
  - [yhatr](https://cran.r-project.org/package=yhatr)

### Related links:

  - CRAN Task View:
    [HighPerformanceComputing](HighPerformanceComputing.html)
  - CRAN Task View: [MachineLearning](MachineLearning.html)
  - [GitHub repository for this Task
    View](https://github.com/terrytangyuan/ctv-model-deployment)
