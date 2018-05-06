all: clean install

install:
	./install.sh

clean:
	rm -rf addons autoload plugins $HOME/.vimrc $HOME/.viminfo

re: clean all
