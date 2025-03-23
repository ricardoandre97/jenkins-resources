#!/bin/bash

if ! [ -t 0 ]; then
	read -a ref
fi


IFS='/' read -ra REF <<< "${ref[2]}"
branch="${REF[2]}"

if [ $branch == "master" ]; then
	crumb=$(curl -u "jenkins:1234" -s 'http://jenkins:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
	curl -u "jenkins:1234" -H "$crumb" -X POST http://jenkins:8080/job/maven-job/build?delay=0sec

	if [ $? -eq 0 ]; then
		echo "*** Ok"
	else
		echo "*** Error"
	fi

fi

