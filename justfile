default: update-butler update-sccache commit push

[working-directory: 'butler']
update-butler: 
    cmake -P genpkg.cmake

[working-directory: 'sccache']
update-sccache: 
    cmake -P genpkg.cmake

commit:
    git commit --all -m ":arrow_up: Updated apps"

push:
    git push origin

up:
    choco push butler/pkg/butler.*.nupkg
    choco push sccache/pkg/sccache.*.nupkg