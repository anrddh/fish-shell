function fish_is_nth_token --description 'Test if current token is on Nth place' --argument-names n
    set -l tokens (commandline -poc)
    set -l tokens (string replace -r --filter '^([^-].*)' '$1' -- $tokens)
    test (count $tokens) -eq "$n"
end
