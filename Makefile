install:
	cp init-shutdown  /etc/init.d/init-shutdown
	cp shutdown-twice /usr/bin/shutdown-twice


uninstall:
	rm /usr/bin/shutdown-twice
	# remove the init.d script and then remove any rc symlinks that might still point to it
	rm /etc/init.d/init-shutdown
	update-rc.d init-shutdown remove
