install: wol
	if [ -L /usr/local/bin/wol ]; then rm /usr/local/bin/wol; fi
	cp wol /usr/local/bin
	chmod +x /usr/local/bin/wol
