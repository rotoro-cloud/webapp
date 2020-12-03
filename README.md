# Simple Web Application

This simple web application using [Python Flask](http://flask.pocoo.org/) use for education purposes.
  
  There are the steps required to get it working on linux.
  
  - Install OS dependencies
  - Install app dependencies
  - Deploy the app source code
  - Start the webserver
   
## 1. Install OS dependencies
  
  Python and its dependencies

    apt-get install -y python3 python3-pip

   
## 2. Install app dependencies
    
  Install Flask framework
    
    pip3  install  flask

## 3. Deploy the app source code

  Copy source to /opt dir

    cp app.py /opt
    
## 4. Start the webserver

Start web command

    FLASK_APP=app.py flask run --host=0.0.0.0 --port=5000
    
## 6. Test

Open a browser and try URL

    http://<IP>:5000                            => Hello!
    http://<IP>:5000/hello%20there              => Hello, my friend.
