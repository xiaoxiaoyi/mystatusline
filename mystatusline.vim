"==============================================================================
"Script Title: mystatusline
"Script Version: 1.0
"Author: luochen1990
"Last Edited: 2013/5/7
"Configuration:
"	first, put "mystatusline.vim"(this file) to dir vim73/plugin or vimfiles/plugin
"	second, add the follow sentences to your .vimrc or _vimrc :
"
"			set laststatus=2
"	 		let g:mystatusline_actived = 1
"
"	third, restart your vim and enjoy coding.

if exists('g:mystatusline_actived') && g:mystatusline_actived
	let statusline_parts = [
				\"%2* %{&ff} %{&ff=='unix'?'\\n':(&ff=='mac'?'\\r':'\\r\\n')}",
				\"%1* %{&fenc!=''?&fenc:&enc}",
				\"%3* %{&ft}%m",
				\"%5* %<%50(%)%50(%)%50(%)%{expand('%:p')}",
				\"%1* %3(%{line('.')==line('$')?'end':(line('.')*100/line('$')).'%'}%)",
				\"%1* %3{line('.')}/%{line('$')}",
				\"%4* %-3(%2{col('.')-1}%) 0x%04b",
				\]

	let &statusline = join(statusline_parts , ' ')

	if has('gui_running')
		hi user1 guifg=#112605  guibg=#aefe7b
		hi user2 guifg=#391100  guibg=#d3905c
		hi user3 guifg=#292b00  guibg=#f4f597
		hi user4 guifg=#051d00  guibg=#7dcc7d
		hi user5 guifg=#002600  guibg=#67ab6e
	endif
endif

