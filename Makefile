
#####################
# Environment Set-Up
#####################

ifeq ($(shell uname -s),Darwin)
		# Assuming mactex Homebrew package on macOS
		TEXBIN = /Library/TeX/texbin
endif

TEX = $(TEXBIN)/tex

hello.out: hello.tex hello.in
	$(TEX) hello.tex

.PHONY: clean-hello
clean-hello:
	rm -f hello.dvi hello.log hello.out
clean: clean-hello

.PHONY: all
all: hello.out

.PHONY: clean
clean:

