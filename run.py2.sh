#!/usr/bin/env bash

#unix
virtualenv --version | egrep -q '[0-9]+\.[0-9]+\.[0-9]+' && echo 'virtualenv is installed...' || sudo pip install virtualenv virtualenvwrapper
if [ -e py2-env/.Python ]; then 
  echo "py2-env virtualenv is already created"
else
  virtualenv py2-env
fi
source py2-env/bin/activate
#pip install #--upgrade pip
pip install ipython numpy jupyter statistics matplotlib pandas seaborn scipy scikit-learn sympy plotly wordcloud pillow mlxtend SPARQLWrapper #--upgrade
#pip install https://storage.googleapis.com/tensorflow/mac/tensorflow-0.8.0-py2-none-any.whl
jupyter notebook
