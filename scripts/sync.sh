#!/bin/bash

rootfolder=`dirname $0`/..

rsync -avr $rootfolder/static dev@eocis.org:/home/dev/services/portal