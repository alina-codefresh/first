



# alina1test
echo
#newgrp docker

docker build -t test .
echo
echo

docker tag test alina1test/test
echo
echo

docker push alina1test/test
echo
echo

docker pull alina1test/test
echo
echo
