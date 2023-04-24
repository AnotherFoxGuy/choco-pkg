function(get_latest_version reponame)
    execute_process(COMMAND lastversion "${reponame}" OUTPUT_VARIABLE VERSION)
    string(REPLACE "\n" "" VERSION "${VERSION}")
    string(REPLACE "." "_" VERSION_UNDERSCORE ${VERSION})

    set(VERSION ${VERSION} PARENT_SCOPE)
    set(VERSION_UNDERSCORE ${VERSION_UNDERSCORE} PARENT_SCOPE)
endfunction(get_latest_version)
