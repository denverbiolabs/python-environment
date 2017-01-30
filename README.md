# Python Jupyter Environment

Currently only supports Unix like systems, sorry Windows!
This can be reconciled in the future

Start up a safe and easy to use Python environment with one command!

Requirements:

1 - [Docker](https://www.docker.com/)  
2 - [Git](https://git-scm.com/downloads)  

Install Docker for Mac, its the easiest way

Then clone down the repository:
`$ git clone https://github.com/denverbiolabs/python-environment.git`


Use the `start.sh` script to start up Jupyter Notebook.
It takes one command - the path to your data!
Pass in that path and it will be mounted into the container

This will first build the docker container using the `Dockerfile`. It might take awhile...

For example:
```
$ bash start.sh $(pwd)/Data
```

If you don't want to complicate things, just drag and drop your data into the `Data` directory

Now navigate to `localhost:8888` in your browser.

To create a new Notebook file, click on the New button and then under `Notebooks`, click on `Python [conda root]`.

Protip - Make notebooks inside of the `Notebooks` directory to make sure that they persist between sessions!

Python Packages Included:
- Pandas
- Numpy
- Seaborn
