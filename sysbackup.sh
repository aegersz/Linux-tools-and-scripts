# rsync -aAXv --delete-after

# take great care !

# remove /home and /centos6 !!!
# +++++++++++++++++++++++++++++

# https://superuser.com/questions/156664/what-are-the-differences-between-the-rsync-delete-options:

# --del                   an alias for --delete-during
# --delete                delete extraneous files from dest dirs
# --delete-before         receiver deletes before transfer (default)
# --delete-during         receiver deletes during xfer, not before
# --delete-delay          find deletions during, delete after
# --delete-after          receiver deletes after transfer, not before
# --delete-excluded       also delete excluded files from dest dirs


rsync 	-zpaAXPv \
	--fake-super \
	--exclude={"/sysbackup/*","/centos6/*","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} \
	/\
	/sysbackup


