execute pathogen#infect()
syntax on
filetype plugin indent on

set number
"set tags=/home/romeus/prj/cornerstone/tags

if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

cs add /home/romeus/prj/exynos7420/sk_kernel/cscope.out
endif

nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

set wildmode=longest,list,full
set wildmenu
