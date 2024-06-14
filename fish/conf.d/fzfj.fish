function fzf_select_history --description "Search command history using fzf"
    begin
        set -lx FZF_DEFAULT_OPTS "--height 60% --tiebreak=index +m --preview 'echo {}' --preview-window bottom:40%"
        history -z | eval fzf --read0 --print0 -q '(commandline)' | read -lz result
        and commandline -- $result
    end
    commandline -f repaint
end
if status is-interactive
    bind \e\[A 'if not commandline --paging-mode ; fzf_select_history (commandline -b) ; else ; commandline --function up-line ; end'
end
