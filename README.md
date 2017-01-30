# Python Jupyter Environment

Requirements:

1 - [Docker](https://www.docker.com/)
2 - [Git](https://git-scm.com/downloads)

Start up a safe and easy to use Python environment with one command!

First clone down the repository
`$ git clone ...`


Use the `start.sh` script to start up Jupyter Notebook.
It takes one command - the path to your data!
Pass in that path and it will be mounted into the container

For example:
```
$ bash start.sh $(pwd)/Data
```

If you don't want to complicate things, just drag and drop your data into the `Data` directory