if which yarn
then yarn global add javascript-typescript-langserver flow-language-server js-langserver
elif which node
then node install -g javascript-typescript-langserver flow-language-server js-langserver
fi

if which pub
then pub global activate dart_language_server
  pub global activate dart_style
fi

if which go
then go get -u github.com/sourcegraph/go-langserver
  go get -u github.com/saibing/bingo
  go get -u golang.org/x/tools/internal/lsp
fi
