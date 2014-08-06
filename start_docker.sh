ocker import wmtnode.tar wmtnode
docker run -d  --name wmtapp -h nodeapp1.wmt.com  -p 22 -p 8080:3000  --entrypoint="/sbin/init" wmtdocker
ipadd=`docker inspect | grep -i ipadd | cut -d":" -f2`
echo $ipadd
echo " run sshroot@<ipaddress above> with password nodejs  "
echo " after logging in cd my_webapp and run node app.js"
echo" After that you can go to the browser and run http://localhost:8080 and you will see the app running " 
