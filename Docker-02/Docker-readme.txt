Shell script which takes python code base to a remote machine (ssh enabled) dockerize it, and install libraries in requirements.txt file on remote machine 

In the remote machine :
	
	ssh-keygen -t rsa
	cat .ssh/id_rsa.pub (Copy the ID and then go to GitHub Settings -> SSH and GPG Keys -> Create a new SSH key and paste the ID)
	SSH now has been enabled.	

	git clone <repository contained python(ssh_url> (Repository containing python code)
	Once the repository gets cloned in the remote machine, we will create a docker container.
	Add the repository code in a new folder called "Code"
	Pulling centos docker image.

	docker pull centos:7