# Face recognition app with check-in check-out capabilities docker file

This is the docker file for https://hub.docker.com/repository/docker/dardbeqiri/face-attendance-web-app docker. 
The app will be downloaded from this git repository: https://github.com/dardbeqiri/face-attendance-web-app-react-python

## Installation

Install docker, [this link will help you on that based on your OS](https://docs.docker.com/engine/install/)

then build it using this command 
```bash
docker build --no-cache -t face-attendance-web-app .
```

## Run it
First we need to create a directory named ```data``` on the current directory.

The built container will need: 
1. Port 8000 bound to hosts port 8000
2. Port 3000 bound to hosts port of your choice, in this case we will use port 80 which is the default http port
3. A persistent storage to store date in this case we will use the ```data``` directory created earlier.

To run the docker use this command
```bash
docker run -p 8000:8000 -p 80:3000 -v $(pwd)/data:/face-attendance-web-app-react-python/backend/data dardbeqiri/face-attendance-web-app
```
## APP 

The app should be live now on [[```localhost```]](http://localhost)
 

## Support My Work

Hey there! 👋

I hope you find my projects on GitHub and Docker helpful. Maintaining and developing these projects requires time and effort. If you enjoy using them and would like to support my work, consider making a donation. Your contribution will help me keep the projects alive and continually improve them.

Donate via PayPal⁠

Thank you for your support! 🙏

Follow Me:

GitHub: github.com/dardbeqiri⁠
Docker Hub: hub.docker.com/u/dardbeqiri
Feel free to reach out if you have any questions or suggestions.

Best, Dardan Beqiri

## License

[MIT](https://choosealicense.com/licenses/mit/)
