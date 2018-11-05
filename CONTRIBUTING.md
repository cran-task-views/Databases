## Contributing Guide

You can [submit an issue on Github](https://github.com/terrytangyuan/ctv-databases/issues) to discuss modifications or fork the repository to modify the content directly with a pull request. 

### How to modify the content of this CRAN task view?

The main content of this repo is in `Databases.ctv`. After the modifications, you should change your R working directory to the location of your fork:
```
setwd("~/repos/ctv-databases/")
```
and then run `ctv2md.R` to convert `Databases.ctv` to `README.md` so it's directly readable on Github. Note that you'll need to install `XML` and `ctv` packages as well as [pandoc](https://pandoc.org/).

### Additional steps for maintainer

```
# Push changes from Github to SVN
cp ~/repos/ctv-databases/Databases.ctv ~/repos/ctv/pkg/inst/ctv/
## Add file to svn (first time only)
## svn add ~/repos/ctv/pkg/inst/ctv/
cd ~/repos/ctv/
svn up
svn commit -m ...

# Pull updates from SVN to Github

cd ~/repos/ctv/
svn up
cp ~/repos/ctv/pkg/inst/ctv/Databases.ctv ~/repos/ctv-databases/
```


### Useful links

* [R-Forge ctv repo](https://r-forge.r-project.org/projects/ctv/)
* [SVN repo](https://r-forge.r-project.org/scm/viewvc.php/?root=ctv)
