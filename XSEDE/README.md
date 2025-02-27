# Experiment workflow

* Create a virtual environment and install the experiment software stack:

```
  cd bin
  . createve.sh
  ```

* Setup SuperMIC to execute synapse emulations:

```
  gsissh -p 2222 supermic.cct-lsu.xsede.org
  mkdir ~/python      
  cd ~/python
  wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz
  tar zxfv Python-2.7.13.tgz 
  find ~/python -type d | xargs chmod 0755
  cd Python-2.7.13
  ./configure --prefix=$HOME/python
  make && make install
  echo export PATH=$HOME/python/Python-2.7.13/:$PATH >> ~/.bashrc
  echo export PYTHONPATH=$HOME/python/Python-2.7.13 >> ~/.bashrc
  . ~/.bashrc
  wget --no-check-certificate https://bootstrap.pypa.io/get-pip.py -O - | python - --user
  echo export PATH=$HOME/.local/bin:$PATH >> ~/.bashrc
  . ~/.bashrc
  pip install --user virtualenv
  virtualenv $HOME/ve.synapse
  source $HOME/ve.synapse/bin/activate
  wget -qO- https://github.com/radical-cybertools/radical.utils/archive/v0.41.1.tar.gz | tar -xzv -C $HOME/
  pip install $HOME/radical.utils-0.41.1/. 
  wget -qO- https://github.com/applicationskeleton/Skeleton/archive/feature/task_flops.tar.gz | tar -xzv -C $HOME/
  pip install $HOME/Skeleton-feature-task_flops/. 
  wget -qO- https://github.com/radical-cybertools/radical.synapse/archive/v0.44.tar.gz | tar -xzv -C $HOME/
  pip install $HOME/radical.synapse-0.44/.
  ```
