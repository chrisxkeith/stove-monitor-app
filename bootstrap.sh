#! /bin/bash
# Select all, copy to temporary shell script in temporary directory, then run it.

set -x
if [ -d ~/Documents/Github/stove-monitor-app/ ] ; then
	echo "Please rename ~/Documents/Github/stove-monitor-app"
	exit 253
fi

mkdir -p ~/Documents/Github                                     ; if [ $? -ne 0 ] ; then exit 66 ; fi
cd ~/Documents/Github                                           ; if [ $? -ne 0 ] ; then exit 66 ; fi
rm -rf JParticle/                                               ; if [ $? -ne 0 ] ; then exit 66 ; fi
git clone https://github.com/Walter-Stroebel/JParticle.git      ; if [ $? -ne 0 ] ; then exit 66 ; fi
git clone https://github.com/chrisxkeith/stove-monitor-app.git  ; if [ $? -ne 0 ] ; then exit 66 ; fi
cp -R JParticle/src/* stove-monitor-app/app/src/                ; if [ $? -ne 0 ] ; then exit 66 ; fi

if [ ! -f ~/Documents/particle-token.txt ] ; then
	echo "Please create ~/Documents/particle-token.txt containing your Particle token."
fi
