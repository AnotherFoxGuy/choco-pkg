function(get_latest_version reponame)
    SET(URL "https://api.github.com/repos/${reponame}/releases/latest")

    execute_process(COMMAND curl -s -L ${URL} OUTPUT_VARIABLE VERSION_JSON)
    string(JSON VERSION_DIRTY GET ${VERSION_JSON} tag_name)

    string(REGEX REPLACE [^0-9\\.] "" VERSION "${VERSION_DIRTY}")
    string(REPLACE "." "_" VERSION_UNDERSCORE ${VERSION})

    set(VERSION ${VERSION} PARENT_SCOPE)
    set(VERSION_UNDERSCORE ${VERSION_UNDERSCORE} PARENT_SCOPE)
endfunction(get_latest_version)
