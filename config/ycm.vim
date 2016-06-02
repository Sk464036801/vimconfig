"设置全局配置文件的路径
let g:ycm_global_ycm_extra_conf = '~/.vim/config/ycm_extra_conf_global.py'
"开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files = 1
"开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
"在接受补全后不分裂出一个窗口显示接受的项
set completeopt-=preview
"不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf=0
"每次重新生成匹配项，禁止缓存匹配项
let g:ycm_cache_omnifunc=0
"在注释中也可以补全
let g:ycm_complete_in_comments=0
"输入第一个字符就开始补全
let g:ycm_min_num_of_chars_for_completion=1
"不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
let g:ycm_use_ultisnips_completer=0
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"在注释输入中也能补全
let g:ycm_complete_in_comments = 0
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"设置error和warning的提示符，如果没有设置，ycm会以syntastic的  
"g:syntastic_warning_symbol 和 g:syntastic_error_symbol 这两个为准  
"let g:ycm_error_symbol='>>'  
"let g:ycm_warning_symbol='>*' 
"设置跳转的快捷键，可以跳转到definition和declaration  
nnoremap <silent><leader>yc :YcmCompleter GoToDeclaration<CR>  
nnoremap <silent><leader>yf :YcmCompleter GoToDefinition<CR>  
nnoremap <silent><leader>yg :YcmCompleter GoToDefinitionElseDeclaration<CR>  
"nmap <F4> :YcmDiags<CR>  

"youcompleteme  默认tab  s-tab 和 ultisnips 冲突
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion = ['<Up>']
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
let g:ycm_key_invoke_completion = '<M-/>'
" SirVer/ultisnips 代码片断
" Trigger configuration. Do not use <tab> if you use
"https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"let g:UltiSnipsListSnippets="<c-e>"
""定义存放代码片段的文件夹，使用自定义和默认的，将会的到全局，有冲突的会提示
"let g:UltiSnipsSnippetDirectories=["bundle/vim-snippets/UltiSnips"]
"
""
"参考https://github.com/Valloric/YouCompleteMe/issues/36#issuecomment-62941322
" 解决ultisnips和ycm tab冲突，如果不使用下面的办法解决可以参考
"
"https://github.com/Valloric/YouCompleteMe/issues/36#issuecomment-63205056的配置
"begin
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"                                           
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
"end

"let g:ycm_csharp_server_port = 0
"let g:ycm_auto_trigger = 1
"let g:ycm_show_diagnostics_ui = 1
"let g:ycm_enable_diagnostic_signs = 1
"let g:ycm_enable_diagnostic_highlighting = 1
"let g:ycm_echo_current_diagnostic = 1
"let g:ycm_always_populate_location_list = 0
"let g:ycm_open_loclist_on_ycm_diags = 1
"let g:ycm_allow_changing_updatetime = 1
"let g:ycm_complete_in_comments = 0
"let g:ycm_path_to_python_interpreter = ''
"let g:ycm_server_use_vim_stdout = 0
"let g:ycm_server_keep_logfiles = 0
"let g:ycm_server_log_level = 'info'
"let g:ycm_auto_start_csharp_server = 1
"let g:ycm_csharp_server_port = 0
"let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
"let g:ycm_key_invoke_completion = '<C-Space>'
"let g:ycm_key_detailed_diagnostics = '<leader>d'
"

" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'vim' : 1,
      \ 'mail' : 1
      \}
let g:ycm_filetype_whitelist = { 
      \ 'cpp' : 1, 
      \ 'objc' : 1, 
      \ 'objcpp' : 1, 
      \ 'cs' : 1, 
      \ 'python' : 1, 
      \ 'go' : 1, 
      \ 'c' : 1 
      \}
let g:ycm_filetype_specific_completion_to_disable = {
      \ 'gitcommit': 1
      \}
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
