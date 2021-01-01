#!/bin/bash

python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip setuptools
mkdir test src
echo "from setuptools import setup" > setup.py
echo "setup(" >> setup.py
echo "    install_requires=[]," >> setup.py
echo "    name='pilotage'," >> setup.py
echo "    scripts=[]," >> setup.py
echo "    version='v0.0.0'," >> setup.py
echo "    packages=[]," >> setup.py
echo "    package_data={'': []}," >> setup.py
echo "    include_package_data=True," >> setup.py
echo "    url=''," >> setup.py
echo "    license=''," >> setup.py
echo "    author=''," >> setup.py
echo "    author_email=''," >> setup.py
echo "    description=''" >> setup.py
echo ")" >> setup.py

pip install pylint pytest coverage pytest-cov
pylint --generate-rcfile > pylintrc.cfg
pip freeze > requirements.txt
