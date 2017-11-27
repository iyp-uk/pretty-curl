#!/usr/bin/env sh

function pretty-curl() {
	curl -sLi "$@" | awk -v bl=1 'bl{bl=0; h=($0 ~ /HTTP\/1/)} /^\r?$/{bl=1} {print $0>(h?"header":"body")}';
	header=$(<header);
	body=$(<body);
	isjson=$(echo $body | is_json);

	echo $header;

	if [ $isjson = "true" ]; then
		echo $body | pp_json | pygmentize -l json;
	else
		echo $body;
	fi	
}

export -f pretty-curl

