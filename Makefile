PROFILES = python-nix terminal-nix python-win
$(PROFILES):
	emacs -q -l init.el --eval "(load-profile :profile '$@)"
