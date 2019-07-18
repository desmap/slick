<img src='https://user-images.githubusercontent.com/43666255/51328119-f9242400-1a72-11e9-9961-118de7234044.png' width='18%'>

### _Vim/Neovim Colortheme–Truecolor, Stunning and Complete_

Slick is a toned-down color scheme for Vim/Neovim. It's one of the most consistent and complete themes I've ever used. It supports many languages and plugins. Fork fixes minor issues and adds new stuff (i.e. EasyMotion support) compared to the initial theme.

### What makes Slick special?

Finding the right colortheme for Vim/Neovim can be quite some odyssey. There are not that many themes out there which cross all these boxes:

- **Complete UI**, all UI elements have the right color, even not so obvious stuff like modals, sign columns, 80-chars-column, cursourline and -columns
- **All major languages** are supported with granular highlighting, man, even vim-plug within VimScript!
- **Reduced color set**, it's not cramming dozens random, muddy colors, enjoy crystal clear colors paired w/matching tones  

### JS, C and Ruby Gallery

<img width='62%' src='http://stuff.imeos.org/persistent/github/vim-colors-tone/vim-colors-tone-ruby-preview.png'>  


<img width='62%' src='http://stuff.imeos.org/persistent/github/vim-colors-tone/vim-colors-tone-javascript-preview.png'>


<img width='62%' src='http://stuff.imeos.org/persistent/github/vim-colors-tone/vim-colors-tone-c-preview.png'>  

### Install
#### Install with vim-plug
Add
```
Plug 'desmap/slick'
```
to your .vimrc/init.vim, restart Vim/Neovim and run `:PlugInstall` in your .vimrc/init.vim file and set the colortheme with `:color slick`.

#### Install with Vundle
Add
```
Plugin 'desmap/slick'
```
to your .vimrc/init.vim, restart Vim/Neovim and run `:PlugInstall` in your .vimrc/init.vim file and set the colortheme with `:color slick`.

### Supports these plugins out of the box

- coc.vim
- Ale
- CtrlP
- EasyMotion
- GitGutter
- NERDTree
- pangloss/vim-javascript
- PlainTasks (.todo)
- Startify
- VIM-JavaScript (pangloss)

### Turn-key ready for many languages

- Apache Config
- CoffeeScript
- CSS
- Git
- Haml
- HTML
- JavaScript/JSX (best with pangloss/vim-javascript)
- Json
- LaTeX
- Markdown
- PHP
- Ruby
- Sass
- Slim
- TypeScript (best with HerringtonDarkholme/yats.vim)
- VimL
- YAML
- XML

### Use CSApprox if you don't have truecolor

You can use a plugin like [CSApprox](http://www.vim.org/scripts/script.php?script_id=2390) to make this work smoothly in older 256 colors or even 88 colors terminals. 
