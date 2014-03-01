installr 0.12.1 (2013-08-23)
---------------------------
BUG FIXES:
   * install.URL - didn't work on Windows. It was because "system" did not run .exe, and "shell" was the correct choice to use here.


installr 0.12.0 (2013-08-21)
---------------------------
NEW FUNCTIONS ADDED:
   * pkgDNLs_worldmapcolor (kindly contributed by Boris Hejblum) - A worldmap colored by the number of downloads for a given package
   * fetch_tag_from_Rd - A function to extract elements from R's help file.
   * package_authors - finding all the authors for this (and other) packages.

OTHER NOTES:
   * Gave credit to other contributers of this package in the DESCRIPTION file (using the fetch_tag_from_Rd function). Contributers' names are sorted alphabetically.


installr 0.11.0 (2013-08-17)
---------------------------
NEW FEATURES:
   * Adds a menu-item on startup to allow the automatic loading of installr whenever starting R.

NEW FUNCTIONS ADDED:
   * add_load_installr_on_startup_menu
   * add_remove_installr_from_startup_menu
   * add_to_.First_in_Rprofile.site
   * is_in_.First_in_Rprofile.site
   * load_installr_on_startup
   * remove_from_.First_in_Rprofile.site
   * rm_installr_from_startup

NEW FILES ADDED:
   * startup.r

installr 0.10.3 (2013-07-13)
---------------------------
IMPORTANT NOTES:
   * TODO: this release is a step before 0.11.0 - when mac will be supported.

UPDATED FUNCTIONS:
   * checkMD5sums2 - added "..."
   * check.for.updates.R - added a "pat" (pattern) parameter (this function might need more tweaking)
   * install.URL - moved to using "system" instead of "shell" (purpose - to allow the function to be useful for mac users as well.)

NEW FUNCTIONS ADDED:
   * up_folder - gets a vector of characters of folder paths, and returns them after turning them into a file.path once their tail was trimmed (through head(n = - 1).


BUG FIXES:
   * install.Rtools - now returns FALSE gracefully if the user chooses to abort.

OTHER NOTES:
   * moved to using "system" instead of "shell" (purpose - to allow the function to be useful for mac users as well.)



installr 0.10.2 (2013-07-06)
---------------------------

UPDATED FUNCTIONS:
   * updateR - added a test to be sure the new R version was installed in the same relative directory as the old R version (otherwise, the copy-packages function should not work)

OTHER NOTES:
   * Updating the docs a bit (description).


installr 0.10.1 (2013-07-04)
---------------------------

OTHER NOTES:
   * Fixed some .Rd width problems
   * installr 0.10.1 is to be shipped to CRAN.


installr 0.10.0 (2013-07-02)
---------------------------

NEW FUNCTIONS ADDED:
   * uninstall.R
   * is.empty - function added for checking if an object is empty (e.g: of zero length)
   * install.Rdevel - usefull for when developing R packages (as this version contains the latest checks.)

UPDATED FUNCTIONS:
   * check.for.updates.R - added a date for the latest R version in the window prompt.

OTHER NOTES:
   * Moving to the versioning scheme suggested by Yihui (see: http://yihui.name/en/2013/06/r-package-versioning/)
   * is.x.r file created - moving various "is.*" functions to this file.
   * Added a welcome massage when loading the package.
   * Updated the README.md with some of the newer functions.


installr 0.9.5 (2013-06-12)
---------------------------

NEW FUNCTIONS ADDED:
   * download_RStudio_CRAN_data
   * read_RStudio_CRAN_data
   * barplot_package_users_per_day
   * lineplot_package_downloads
   * format_RStudio_CRAN_data
   * most_downloaded_packages

UPDATED FUNCTIONS:
   * require2 - the 'package' parameter no longer needs quotes. (just like in the require function)

OTHER NOTES:
   * RStudio_CRAN_data.r file created



installr 0.9.4 (2013-05-21)
---------------------------

NEW FUNCTIONS ADDED:
   * myip - return your ip address.
   * freegeoip - Geolocate IP addresses in R (contributed by Heuristic Andrew)
   * restart_RGui - a function to restart Rgui from Rgui
   
UPDATED FUNCTIONS:
   * require2 - added the "ask" parameter.

OTHER NOTES:
   * geo_functions.r file created
   * cranometer - function moved to the geo_functions.r file.


installr 0.9.3 (2013-05-18)
---------------------------

UPDATED FUNCTIONS:
   * install.R - started using checkMD5sums2 instead of checkMD5sums in order to allow the manual removal of the files ‘etc/Rconsole’ and ‘etc/Rprofile.site’ from the checksums (they are changed during the R installation process, and always give an error massage)
   * checkMD5sums2 - added the omit_files parameter (allowing the removal of the files ‘etc/Rconsole’ and ‘etc/Rprofile.site’ from the checksums of an R installation)
   * get.installed.R.folders - making the function more robust, by having it rely on the README files instead of the folder names. (based on a bug report by GilesCrane - thanks.)
   * R_version_in_a_folder function added (get the version of R installed in a folder. Based on the README file name inside the folder)


installr 0.9.2 (2013-05-14)
---------------------------

NEW FUNCTIONS ADDED:
   * cranometer - Estimates the speed of each CRAN mirror by measuring the time it takes to download the NEWS file. (including an example of creating a world-map based on this data)
   * require2 - just like "require", only makes sure to download and install the package in case it is not present on the system (useful for examples...)

OTHER NOTES:
   * More documentation.  Updated README.md
   * Fixed width of various elements in the documentation
   * installr 0.9.2 is to be shipped to CRAN.


installr 0.9.1 (2013-04-04)
---------------------------

NEW FUNCTIONS ADDED:
   * checkMD5sums2 - Just like checkMD5sums from the tools package, but with the added md5file parameter. (useful for manually checking if the downloaded R EXE installer is fine, combined with this MD5 file: http://cran.rstudio.com/bin/windows/base/md5sum.txt)
   * browse.latest.R.NEWS() - sends the user to the latest R NEWS file.

UPDATED FUNCTIONS:
   * install.URL - updated the error massage to explain better what (probably) went wrong.  And encourage the users to e-mail me with bug reports.
   * add.installr.GUI - made sure the function wouldn't add items if "Update" is already present. e.g: made a fail-safe mechanism in case the function installr:::add.installr.GUI() is run more than once (my thanks goes to Dieter Menne for the suggestion)
   * install.R - Updated the warning massage on install.R in case checkMD5sum fails.
   * updateR -
      ** added the to_checkMD5sums parameter to updateR (to be passed on to install.R() )
      ** it now uses the browse.latest.R.NEWS() function.

BUG FIXES:
   * install.pandoc - fixed it to work with the new URL scheme they've chosen for their site (they moved to MSI instead of .EXE about two weeks ago...)
   * updateR - fixed a typo in the installation massage (thanks to Henrik Pärn)

OTHER NOTES:
   * Fixed wrongly used capital letters (for example, in the NEWS file)


installr 0.9 (2013-03-29)
---------------------------

UPDATED FUNCTIONS:
   * Made sure to include a lower-case version of all install.X functions.

OTHER NOTES:
   * More documentation.  Updated README.md
   * installr 0.9 is to be shipped to CRAN.



installr 0.8.8 (2013-03-26)
---------------------------
NEW FUNCTIONS ADDED:
   * install.notepadpp
   * install.npptor
   * install.Cygwin
   * install.LaTeX2RTF



installr 0.8.7 (2013-03-16)
---------------------------
NEW FUNCTIONS ADDED:
   * install.SWFTools
   * install.FFmpeg
   * install.7zip - for unzipping of FFmpeg
   * system.PATH - to see what is in the users PATH for running .exe programs.

UPDATED FUNCTIONS:
   * os.manage - now asks the user in how many minutes to perform the operation.

BUG FIXES:
   * Fixed a bug in install.LyX.rd that caused it to not load properly when using install_github (props goes to Richard Cotton for catching the bug.)

installr 0.8.6
--------------

NEW FUNCTIONS ADDED:
   * install.ImageMagick
   * install.GraphicsMagick
   * install.LyX
   * os.manage, os.shutdown, os.restart, os.hibernate, os.sleep, os.lock (set of functions to turn off the computer after simulation or the likes)

UPDATED FUNCTIONS:
   * install.Rtools - removed "latest_Frozen", added "check".  Made the function know which Rtools to install based on your R version (and if it is not known - it asks the user to choose a version)
   * Removed shutdown (turned into os.shutdown), and made sure it uses "force" shutdown.


installr 0.8.5
--------------

NEW FUNCTIONS ADDED:
   * installr - allows the user to choose which software to install (from a GUI or console based menu system)
   * A new GUI for Rgui - added the "Update" to the menu, with three submenu items: Update R, Update R Packages, and Installing software. (thanks to Dason and Yihui Xie for their ideas and help)
   * shutdown - Shut down the operating system with the command `shutdown'.  A modified version of Yihui's shutdown function from the {fun} package (see: https://github.com/yihui/fun/blob/master/R/shutdown.R)
   * is.RStudio - checks if the current R session is running within RStudio or not.
   * is.Rgui - checks if the current R session is running within Rgui or not.
   * add.installr.GUI and remove.installr.GUI - for adding a menu system to Rgui

UPDATED FUNCTIONS:
   * install.URL - 
      * added a "wait" parameter with default as F (it now means that R doesn't wait for the installation of the software to finish before it releases the console).  And also "..." with access to the shell command run.
      * Made sure that if keep_install_file = FALSE then wait= TRUE (since otherwise, we'll erase the file before we get to run it)
      * output now returns TRUE/FLASE on whether the installation worked or not.
   * install.?? - now returns TRUE/FLASE on whether to installation worked or not.
   * install.R - Now uses MD5sums to check the newly installed R has all of the files it should.
   * updateR - 
      * added a menu based GUI!
      * added setInternet2(TRUE) for when updating packages (to help it work with specification of proxies, etc.). (this seems to be safe for regular users - but I hope it won't cause new problems.).  Thanks to a bug report by Gilbert Pétain-Coup.
      * now checks if R was installed or not (Based on the output of install.R), and removed the need to ask the user that.
   * ask.user.yn.question - added a menu based GUI.
   * check.for.updates.R - added a menu based GUI.

BUG FIXES:
   * Fixed a bug in updateR, to make sure it will be able to open the new Rgui, and also close the old R.
   * Fixed a bug in updateR, "Error in !install_R : 'install_R' is missing" (install_R was called in too early) (thanks to AC for the bug report!)


installr 0.8 (2013-03-05)
-------------------------

FIXES FOR CRAN SUBMISSION:
   * Fixed some spelling mistakes in DESCRIPTION,
   * Made sure to run the checks in the latest R version (R 2.15.3, oh the irony)
   * Changed update.R to be called updateR (in order to avoid confusing it as an S3 variation to 'update')
   * installr 0.8 is to be shipped to CRAN.


My thanks goes to Prof Brian Ripley for his help.


installr 0.7
--------------

NEW FUNCTIONS ADDED:
   * ask.user.yn.question - Asks the user for one yes/no question.

UPDATED FUNCTIONS:
   * update.R  - fixed a bug in quit_R, and added an option to open the Rgui of the new R. Started using ask.user.yn.question in the function (to make it more readable).
   * fixed some parameters not defined in the function.
   * made install.MikTeX more friendly in case a wrong version number is specified.

OTHER NOTES:
   * More documentation.  Updated README.md (fixed \link vs \url)

installr 0.6
------------

NEW FUNCTIONS ADDED:
   * get.installed.R.folders - Returns folder names with R installations
   * copy.packages.between.libraries - Copies all packages from one library folder to another

UPDATED FUNCTIONS:
   * update.R  - major update.  Now the user can copy his packages from the old R version to the new version.
   * ask.user.for.a.row - new "questions_text" parameter

OTHER NOTES:
   * Updated the NEWS
   * More documentation
   * Added "\dontrun{" so to make the package pass CRAN tests (http://stackoverflow.com/questions/12038160/how-to-not-run-an-example-using-roxygen2)


installr 0.3-0.5
----------------

NEW FUNCTIONS ADDED:
   * source.https
   * install.MikTeX
   * install.git
   * install.RStudio
   * install.GitHub
   * create.global.library - a merge of create.global.library.oldR and create.global.library.newR (from the post: http://www.r-statistics.com/2011/04/how-to-upgrade-r-on-windows-7/)
   * is.windows() - so when the function is loaded it is checked if the current OS is windows or not.

UPDATED FUNCTIONS:
   * isntall.R - removed extra parameter.
   * update.R - allow the user to review the NEWS of the newer version

OTHER NOTES:

   * Updated the NEWS format and text
   * Updated the description file
   * Changed the name of the package from installR to installr.
   * Added a README.md	
   * Added documentation to all the functions in install.r (via roxygen2)


installR 0.2
------------

NEW FUNCTIONS ADDED:

   * install.packages.zip - for installing package from a url of the ZIP file
   * install.Rtools - for installing Rtools (allowing the user to choose which version to download)	
   * update.R - for checking if we have the latest version of R - and if not - download and install it.
   * install.R
	


installR 0.1 (2013-03-01) 
-------------------------

NEW FUNCTIONS ADDED:

   * install.pandoc() function is created.

OTHER NOTES:

	* Includes skeletons for some functions that will be added in the future.
	

	

TODO for future releases:
-------------------------
	* Better integration with the "global library" strategy
	* make the os.manage work by running an Rscript, in order to allow for their use in long running of knitr/Sweave projects.
   * Add a rate function for the package
   * Add automatic check for a new R version every X time.
   * a way to copy/move Rprofile.site from one installation to the next such as "C:\Program Files\R\R-2.15.2\etc\Rprofile.site" to "C:\Program Files\R\R-2.15.3\etc\Rprofile.site"? (requested by: Farrel Buchinsky)
   * Add more checks for when copying library folders. If it is found the user has more than one library - show him the options of what he is copying from where to where - and ask the user to approve.  If he denies, to ask him which folder to choose "from", and which "to" copy the libraries into.
   *add a general package help file.
   * Fix install.RStudio to act differently in case it is being run from within RStudio (keeping the installation file for the user to run it)
   *  Add control on which mirror to use when running install.R()
   *  allow a user to browse and find the old and new R installation on his system, in case there is a change in file directory from the standard directory structure.
   * consider having a way to deal with R version installed in other folders.
   * create updateRdevel?
   * install.Rpatch # TODO someday
   * install.python # TODO someday
   * install.java # with correct downloading for each type of windows R (version 32 or 64 bits...