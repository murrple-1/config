" I also recommend using the Awesome config from:
" https://github.com/amix/vimrc
"
" In which case, this file should be ~/.vim_runtime/my_configs.vim

let g:viHardMode = 0

function! ToggleViHardMode()
    if g:viHardMode
        let g:viHardMode = 0
        unmap <Up>
        unmap <Down>
        unmap <Left>
        unmap <Right>
    else
        let g:viHardMode = 1
        map <Up> :echo 'Use k instead of Up'<CR>
        map <Down> :echo 'Use j instead of Down'<CR>
        map <Left> :echo 'Use h instead of Left'<CR>
        map <Right> :echo 'Use l instead of Right'<CR>
    endif
endfunction

function! EchoCurrentDifficulty()
    if g:viHardMode
        echo 'HARD MODE'
    else
        echo 'EASY MODE'
    endif
endfunction

map <F9> :call ToggleViHardMode()<CR>
map <F10> :call EchoCurrentDifficulty()<CR>
map <F11> :set invnumber<CR>

call ToggleViHardMode()
