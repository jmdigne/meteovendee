# meteo85
RaspberryPI Weather Application with associated static website hosted by OVH.com

- Image capture is done using a USB PS3 Webcam
- Radar/Rain images are grabbed from sat24.com
- Images ar assembled using ImageMagick convert utility
- The local website is push every hour using a cron job to OVH hosting service available at http://www.kazamarie.info/meteo/meteo.html


==============================================================================

Git How to 
==============================================================================

Start Git Bash.
Configure Git to disable SSL, if necessary.

git config --global http.sslVerify false

Configure the proxy server, if necessary.
git config --global http.proxy http://www.testproxyserver.com:80/


Navigate to the directory where you want to clone the Git cloud repository.
Clone the Git cloud repository using the desired protocol.

git clone https://github.com/jmdigne/meteo85.git

Copy the application files to the cloned repository directory.

Use the git add command to add new files to the cloned repository.

git add workflow.sh 

Commit all files to the cloned Git repository.

git commit -a -m "v1.0.1 - UI Makeup"

Push the transaction to the Git cloud repository.

git push origin master

Username for 'https://github.com': jmdigne

Password for 'https://jmdigne@gmail.com@github.com': *****


Enter exit to close the Git Bash prompt.





