"Blatantly stolen from Keegan
" regenerate the tags file, including project gems
map <Leader>rv :!ctags --tag-relative --exclude=.git --languages=ruby -R * `rvm gemdir`/gems/*<CR><CR>
map <Leader>rb :!ctags --tag-relative --exclude=.git --languages=ruby -R * `rbenv prefix`/*<CR><CR>

" configure vimux-ruby-test so ruby tests can run in 20% horizontal pane.
let g:vimux_ruby_cmd_unit_test = "bundle exec ruby"
let g:vimux_ruby_cmd_all_tests = "rake test:parallel"

" Run the current file with testunit
map <Leader>X :call VimuxRunCommand("clear; bundle exec ruby " . bufname("%"))<CR>

" Run the current test
map <Leader>1 :RunRubyFocusedTest<CR>

" Run all rails tests
map <Leader>2 :RunAllRailsTests<CR>
