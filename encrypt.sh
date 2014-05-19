#! /bin/sh
#
# encrypt.sh
# Copyright (C) 2014 tox <tox@rootkit>
#
# Distributed under terms of the MIT license.
#

read -s -p "Key in Hex: " key

infile=$1
outfile=$2

if [ -z "$infile" ] || [ -z "$outfile" ]; then
	echo "Usage: $0 <infile> <outfile>"
	exit 1;
fi
cat "$1" | {
	iv=`head -c16 | hexdump -C | cut -d' ' -f 2-19 | head -n 1 | tr -d ' '`
	openssl aes-256-cbc -d -K $key -iv "$iv" -in <(cat) -out $outfile;
}
