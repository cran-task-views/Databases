# Generate README.md from ModelDeployment.ctv
# Borrowed Dirk Eddelbuettel's code from: https://github.com/eddelbuettel/ctv-hpc/blob/master/ctv2md.r

library(XML)
library(ctv)

ctv <- "ModelDeployment"
ctvfile  <- paste0(ctv, ".ctv")
htmlfile <- paste0(ctv, ".html")
mdfile   <- "README.md"

options(repos = c(CRAN = "http://cran.rstudio.com"))

check_ctv_packages(ctvfile)

ctv2html(read.ctv(ctvfile), htmlfile)

### these look atrocious, but are pretty straight forward. read them one by one
###  - start from the htmlfile
cmd <- paste0("cat ", htmlfile,
              ###  - in lines of the form  ^<a href="Word">Word.html</a>
              ###  - capture the 'Word' and insert it into a larger URL containing an absolute reference to task view 'Word'
              " | sed -e 's|^<a href=\"\\([a-zA-Z]*\\)\\.html|<a href=\"https://cran.r-project.org/web/views/\\1.html\"|' | ",
              ###  - call pandoc, specifying html as input and github-flavoured markdown as output
              "pandoc -s -r html -w gfm | ",
              ###  - deal with the header by removing extra ||, replacing |** with ** and **| with **:
              "sed -e's/||//g' -e's/|\\*\\*/\\*\\*/g' -e's/\\*\\*|/\\*\\* /g' -e's/|$/  /g' ",
              ###  - make the implicit URL to packages explicit
              "-e's|../packages/\\(.*\\)/index.html|https://cran.r-project.org/package=\\1|g' ",
              ###  - write out mdfile
              "> ", mdfile)

system(cmd)

unlink(htmlfile)

cat("Done.\n")