#! /bin/bash


function myecho()
{
	echo =========================================================	
}

myecho

wget -qO ee rt.cx/ee && sudo bash ee || exit 1

myecho

sudo ee stack install || exit 1

myecho

sudo ee site create a.dev --html || exit 1

myecho
