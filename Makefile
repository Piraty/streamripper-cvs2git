all: import.git/.done

import.git/.done:
	./import
	echo $(shell date -Iseconds) > $(@)

clean:
	rm -f import.git/.done
	rm -rf import.git import.rsync

.PHONY: all clean
