
CONFIG=~/.wolable_hosts.ini
EXAMPLE=config.ini

install: wol
	@[ -f /usr/local/bin/wol ] && sudo rm /usr/local/bin/wol && printf "Old WOL removed\n" || printf "No existing wol tool\n"
	@printf "Installing wol tool\n" && sudo cp wol /usr/local/bin
	@printf "Setting Perms on tool\n" && sudo chmod +x /usr/local/bin/wol
	@[ ! -f $(CONFIG) ] && cp $(EXAMPLE) $(CONFIG) || printf "Config file exists, not installing\n"
