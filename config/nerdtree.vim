map <silent> <F3> :NERDTreeToggle<CR>

"设定 NERDTree 视窗大小
let g:NERDTreeWinSize = 30
"设置鼠标只能在 Visual, Normal mode时有作用
set mouse=nv
"设置目前行下划线提示
"set cursorline
" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
" autocmd VimEnter * NERDTree
" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
" let NERDTreeWinPos="right"
" 当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
"目录箭头 1 显示箭头  0传统+-|号
let NERDTreeDirArrows=0
"不显示帮助面板
let NERDTreeMinimalUI=1
"打开文件时关闭树
let NERDTreeQuitOnOpen=0 
