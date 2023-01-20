 #!/usr/bin/bash

echo "Running error.sh $(date)"
try=0

./error.sh
while [ $? -ne 1 ] ; do
    try=$(($try + 1))
    ./error.sh
done
try=$(($try + 1))

echo "The program was executed $try times"
