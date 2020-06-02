# devops_task_3
TO RUN AND CONNECT THROUGH SSH JUST DO THE FOLLOWING

$ docker run  -d     -P      --name      test_sshd           iamtheindian/k8s-ssh-linux
$ docker port test_sshd 22
IT WILL GIVE YOU OUTPUT LIKE THIS 
>0.0.0.0:49154

NOW, YOU CAN CONNECT THROUGH YOU LOCAL IP, JUST USE THIS PORT [ 49154 ]  

$ ssh root@192.168.1.2 -p 49154
# or
$ ssh root@localhost -p 49154
# The password is ``root``.
root@f38c87f2a42d:/#

OR YOU CAN DIRECT CONNECT THROUGH CONTAINER IP(BUT IT IS NOT RECOMMENDED)

# sudo docker inspect -f "{{ .NetworkSettings.IPAddress }}" Container_Name

IT WILL SHOW YOU IP OF YOUR CONTAINER
NOW,
sudo ssh root@ipofyourcontainer 

FIRST IT WILL ASK YOU SOME CREDENTIAL TYPE "yes" AND HIT ENTER
AFTER THIS TYPE PASSWORD "root"
