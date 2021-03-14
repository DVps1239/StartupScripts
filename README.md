# StartupScripts
StartupScripts

#created to use startup scripts with google cloud.


1) sh.sh - installing ruby and bundler

2) mongo.sh - extracting keys and installing mongodb

3) build-deploy.sh -build and deploy	 

4) gcloud compute instances create --boot-disk-size=10GB -- image=ubuntu-1604-xenial-v20170815a --image-project=ubuntu-os-cloud -- machine-type=g1-small --tags scriptserver --restart-on-failure --zone=europe-west1-b scriptserver1 gcloud compute firewall-rules startup-script=~/Desktop/Repo/StartupScripts/build-deploy.sh
