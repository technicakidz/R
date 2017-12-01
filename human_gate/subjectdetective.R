###################################################### 100.0%
==> Pouring little-cms2-2.9.sierra.bottle.1.tar.gz
ð  /usr/local/Cellar/little-cms2/2.9: 18 files, 1MB
==> Upgrading pandoc
==> Downloading https://homebrew.bintray.com/bottles/pandoc-2.0.3.sierra.bottle.tar.gz
######################################################################## 100.0%
==> Pouring pandoc-2.0.3.sierra.bottle.tar.gz
==> Caveats
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d
==> Summary
ð  /usr/local/Cellar/pandoc/2.0.3: 125 files, 62.7MB
➜  ~ git:(master) ✗ brew update
Updated 4 taps (caskroom/cask, caskroom/versions, homebrew/core, homebrew/science).
==> Updated Formulae
abcmidi                       btfs                          gnome-recipes                 jenkins                       pdnsrec                       stunnel
adwaita-icon-theme            coffeescript                  haproxy                       libgweather                   polyml                        wireguard-tools
aws-sdk-cpp                   freetds                       homebrew/science/nextflow     libtcod                       restic
blockhash                     glade                         hugo                          paket                         sdl2_mixer
➜  ~ git:(master) ✗ brew list
arpack		    	 gawk			icu4c			libyaml			openexr			qrupdate  tbb
autoconf		 			gcc									ilmbase	    little-cms2  openssl   qt   texinfo
automake														gd	    		 	   imagemagick  lua   openssl@1.1  qt@5.7   transfig
bison																			   		gdbm  		   	    isl   mecab   pandoc   r   veclibfort
cairo																								    	  gettext 	       jasper   mecab-ipadic  pcre   rbenv   webp
curl																									  		       		ghostscript   	     jpeg      metis   pixman   readline  wget
eigen																															     	       git     			  lame   mpfr   pkg-config  redis   x264
epstool																																       				  	 gl2ps		    	    libffi   mysql   plotutils  ruby   xvid
ffmpeg																																					 			    	     glib    		       libmpc   mysql56   portaudio  ruby-build  xz
fftw																																									     			       		glpk	  	     		 libogg   mysql@5.6  pstoedit  scala   zeromq
fig2dev																																																		 	  gmp	     	       	       libpng   nkf   pyenv   sqlite   zsh
flac																																																			  			       		gnu-sed	      	        libsndfile  node   pyenv-virtualenv sshfs
fltk																																																												    gnuplot		      libtiff   numpy   python   suite-sparse
fontconfig																																																											    			      graphicsmagick		 libtool   openblas  python3   swig
freetype																																																														      				 hdf5	   	     	       libvorbis  opencv   qhull   szip
➜  ~ git:(master) ✗ pip list
pyenv: pip: command not found

The `pip' command exists in these Python versions:
  anaconda-2.0.1
  anaconda3-2.4.1
  anaconda3-4.3.1
  anaconda3-4.3.1/envs/tensorFlow
  anaconda3-5.0.0
  miniconda-2.2.2
  tensorFlow

➜  ~ git:(master) ✗ pyenv
pyenv 1.1.5
Usage: pyenv <command> [<args>]

Some useful pyenv commands are:
   commands    List all available pyenv commands
   local       Set or show the local application-specific Python version
   global      Set or show the global Python version
   shell       Set or show the shell-specific Python version
   install     Install a Python version using python-build
   uninstall   Uninstall a specific Python version
   rehash      Rehash pyenv shims (run this after installing executables)
   version     Show the current Python version and its origin
   versions    List all Python versions available to pyenv
   which       Display the full path to an executable
   whence      List all Python versions that contain the given executable

See `pyenv help <command>' for information on a specific command.
For full documentation, see: https://github.com/pyenv/pyenv#readme
➜  ~ git:(master) ✗ pyenv update
Updating /Users/yoshidatakayuki/.pyenv/plugins/pyenv-doctor...
From git://github.com/yyuu/pyenv-doctor
 * branch            master     -> FETCH_HEAD
Already up-to-date.
Updating /Users/yoshidatakayuki/.pyenv/plugins/pyenv-installer...
remote: Counting objects: 12, done.
remote: Total 12 (delta 6), reused 6 (delta 6), pack-reused 6
Unpacking objects: 100% (12/12), done.
From git://github.com/yyuu/pyenv-installer
 * branch            master     -> FETCH_HEAD
   19b1ba8..78cfd4d  master     -> origin/master
Updating 19b1ba8..78cfd4d
Fast-forward
 README.rst | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)
Updating /Users/yoshidatakayuki/.pyenv/plugins/pyenv-pip-rehash...
remote: Counting objects: 4, done.
remote: Total 4 (delta 2), reused 2 (delta 2), pack-reused 2
Unpacking objects: 100% (4/4), done.
From git://github.com/yyuu/pyenv-pip-rehash
 * branch            master     -> FETCH_HEAD
   7e1c091..488377f  master     -> origin/master
Updating 7e1c091..488377f
Fast-forward
 README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
Updating /Users/yoshidatakayuki/.pyenv/plugins/pyenv-update...
remote: Counting objects: 4, done.
remote: Total 4 (delta 2), reused 2 (delta 2), pack-reused 2
Unpacking objects: 100% (4/4), done.
From git://github.com/yyuu/pyenv-update
 * branch            master     -> FETCH_HEAD
   c468d9f..efd96e2  master     -> origin/master
Updating c468d9f..efd96e2
Fast-forward
 README.md | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
Updating /Users/yoshidatakayuki/.pyenv/plugins/pyenv-virtualenv...
pyenv-update: /Users/yoshidatakayuki/.pyenv/plugins/pyenv-virtualenv is not on master branch.
Updating /Users/yoshidatakayuki/.pyenv/plugins/pyenv-which-ext...
remote: Counting objects: 4, done.
remote: Total 4 (delta 2), reused 2 (delta 2), pack-reused 2
Unpacking objects: 100% (4/4), done.
From git://github.com/yyuu/pyenv-which-ext
 * branch            master     -> FETCH_HEAD
   2aaf7d9..9d37659  master     -> origin/master
Updating 2aaf7d9..9d37659
Fast-forward
 README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
➜  ~ git:(master) ✗ pyenv command
pyenv: no such command `command'
➜  ~ git:(master) ✗ pyenv help
Usage: pyenv <command> [<args>]

Some useful pyenv commands are:
   commands    List all available pyenv commands
   local       Set or show the local application-specific Python version
   global      Set or show the global Python version
   shell       Set or show the shell-specific Python version
   install     Install a Python version using python-build
   uninstall   Uninstall a specific Python version
   rehash      Rehash pyenv shims (run this after installing executables)
   version     Show the current Python version and its origin
   versions    List all Python versions available to pyenv
   which       Display the full path to an executable
   whence      List all Python versions that contain the given executable

See `pyenv help <command>' for information on a specific command.
For full documentation, see: https://github.com/pyenv/pyenv#readme
➜  ~ git:(master) ✗ pyenv versions
* system (set by /Users/yoshidatakayuki/.pyenv/version)
  anaconda-2.0.1
  anaconda3-2.4.1
  anaconda3-4.3.1
  anaconda3-4.3.1/envs/tensorFlow
  anaconda3-5.0.0
  miniconda-2.2.2
  tensorFlow
➜  ~ git:(master) ✗ brew list
arpack		    	 gawk			icu4c			libyaml			openexr			qrupdate  tbb
autoconf		 			gcc									ilmbase	    little-cms2  openssl   qt   texinfo
automake														gd	    		 	   imagemagick  lua   openssl@1.1  qt@5.7   transfig
bison																			   		gdbm  		   	    isl   mecab   pandoc   r   veclibfort
cairo																								    	  gettext 	       jasper   mecab-ipadic  pcre   rbenv   webp
curl																									  		       		ghostscript   	     jpeg      metis   pixman   readline  wget
eigen																															     	       git     			  lame   mpfr   pkg-config  redis   x264
epstool																																       				  	 gl2ps		    	    libffi   mysql   plotutils  ruby   xvid
ffmpeg																																					 			    	     glib    		       libmpc   mysql56   portaudio  ruby-build  xz
fftw																																									     			       		glpk	  	     		 libogg   mysql@5.6  pstoedit  scala   zeromq
fig2dev																																																		 	  gmp	     	       	       libpng   nkf   pyenv   sqlite   zsh
flac																																																			  			       		gnu-sed	      	        libsndfile  node   pyenv-virtualenv sshfs
fltk																																																												    gnuplot		      libtiff   numpy   python   suite-sparse
fontconfig																																																											    			      graphicsmagick		 libtool   openblas  python3   swig
freetype																																																														      				 hdf5	   	     	       libvorbis  opencv   qhull   szip
➜  ~ git:(master) ✗ pip list


















































----:---F1  *scratch*      All L1     (Fundamental)-------------------------------------------------------------------------------------------------------------------------------
Loading subst-jis...done
#load to data
#dt:datasets, label:users(30), act:each of activity labels(6)
install.packages("rlang")
install.packages("ggplot2")
install.packages("caret")
library(caret)
library(doParallel)
library(e1071)

d <- data.frame(read.table("/Users/yoshidatakayuki/Data/har/data100.txt"))
class <- data.frame(read.table("/Users/yoshidatakayuki/Data/har/label100.txt"))
#other dataset
d <- data.frame(read.table("/Users/yoshidatakayuki/Data/USC-HAD_a1/a1.txt"))
class <- data.frame(read.table("/Users/yoshidatakayuki/Data/USC-HAD_a1/subject.txt"))

#userとlabelの固定ラベルラベル作成 ex.)u1_walk

#colnames(class)[1] = "label"

#colnames(act)[1] = "act"
#ラベルの連結
#data = cbind(d, class)
#data = cbind(data, act)

class$V1 = factor(class$V1)
colnames(class)[1] = "label"
#並列化
t<-proc.time()
cl <- makeCluster(detectCores())
registerDoParallel(cl)

tmp = list()
#Activityごとの結果
models = list()
models2 = list()
models3 = list()
models4 = list()
models5 = list()
models6 = list()

#USC-HAD
models_knn = list()
models_lda = list()
models_rf = list()
models_j48 = list()
models_svm = list()


trControl = trainControl(method = 'repeatedcv',
                         number = 10,
-uuu:---F1  preprocess.R   Top L1     (Fundamental)-------------------------------------------------------------------------------------------------------------------------------
Loading image...done#load to data
#dt:datasets, label:users(30), act:each of activity labels(6)
install.packages("rlang")
install.packages("ggplot2")
install.packages("caret")
library(caret)
library(doParallel)
library(e1071)
library(nnet)

#define dataset
d <- data.frame(read.table("/Users/username/Data/USC-HAD_a1/a1.txt"))
class <- data.frame(read.table("/Users/username/Data/USC-HAD_a1/subject.txt"))

#userとlabelの固定ラベルラベル作成 ex.)u1_walk

#colnames(class)[1] = "label"

#colnames(act)[1] = "act"
#ラベルの連結
#data = cbind(d, class)
#data = cbind(data, act)

class$V1 = factor(class$V1)
colnames(class)[1] = "label"
#並列化
t<-proc.time()
cl <- makeCluster(detectCores()) 
registerDoParallel(cl)

tmp = list()
#Activityごとの結果
models = list()
models2 = list()
models3 = list()
models4 = list()
models5 = list()
models6 = list()

#USC-HAD
Umodels_knn_a1 = list()
Umodels_lda_a1 = list()
Umodels_rf_a1 = list()
Umodels_j48_a1 = list()
Umodels_svm_a1 = list()


trControl = trainControl(method = 'repeatedcv',
                         number = 10,
                         repeats = 10)

#preProcess = NULL
print("Making knn model...")
Umodels_knn_a1$knn <- train(d, class$label, method = 'knn', tuneGrid = expand.grid(k=c(1:10)),
                    metric = 'Kappa', trControl = trControl)

print("Making lda model...")
Umodels_lda_a1$lda <- train(d, class$label, method = 'lda',
                    metric = 'Kappa', trControl = trControl)

print("Making J48 model...")
Umodels_j48_a1$rpart <- train(d, class$label, method = 'J48',
                    metric = 'Kappa', trControl = trControl)

print("Making rf model...")
Umodels_rf_a1$rf <- train(d, class$label, method = 'rf', tuneGrid = expand.grid(mtry = 2),
                    metric = 'Kappa', trControl = trControl)

print("Making svmRadial model...")
Umodels_svm_a1$svmRadial <- train(d, class$label, method = 'svmRadial', tuneGrid = expand.grid(sigma=c(3 ^ (-2:2)), C=10),
                          metric = 'Kappa', trControl = trControl)

stopCluster(cl)
proc.time()-t


#plot
conf=confusionMatrix()
levelplot(sweep(x = conf$table, STATS = colSums(conf$table), MARGIN = 2, FUN = '/'), scales=list(x=list(rot=90)), col.regions=gray(100:0/100))