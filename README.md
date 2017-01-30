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

Now navigate to `localhost:8888` in your browser.

To create a new Notebook file, click on the New button and then under `Notebooks`, click on `Python [conda root]`.

Protip - Make notebooks inside of the `Notebooks` directory to make sure that they persist between sessions!
