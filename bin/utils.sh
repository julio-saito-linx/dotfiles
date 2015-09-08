#!/bin/bash

. ~/_git/dotfiles/bin/log.sh


#######################################################
## utilitários
#######################################################

function todo_subl() {
  exec_and_log cd ~/_git/todolist.md
  exec_and_log subl ~/_git/todolist.md
}

function dotfiles_subl() {
  exec_and_log cd ~/_git/dotfiles
  exec_and_log subl ~/_git/dotfiles
}

function sb() {

  # check if `project.sublime-project` file exists
  if ! [ -f project.sublime-project ]; then

    # if not then create a new one with common folders ignored
    echo '{'                                 >  project.sublime-project
    echo '  "folders":'                      >> project.sublime-project
    echo '  ['                               >> project.sublime-project
    echo '    {'                             >> project.sublime-project
    echo '      "file_exclude_patterns":'    >> project.sublime-project
    echo '      ['                           >> project.sublime-project
    echo '        "project.sublime-project"' >> project.sublime-project
    echo '      ],'                          >> project.sublime-project
    echo '      "folder_exclude_patterns":'  >> project.sublime-project
    echo '      ['                           >> project.sublime-project
    echo '        "bower_components",'       >> project.sublime-project
    echo '        "node_modules",'           >> project.sublime-project
    echo '        ".azk",'                   >> project.sublime-project
    echo '      ],'                          >> project.sublime-project
    echo '      "path": "."'                 >> project.sublime-project
    echo '    }'                             >> project.sublime-project
    echo '  ]'                               >> project.sublime-project
    echo '}'                                 >> project.sublime-project
    echo ''                                  >> project.sublime-project
  fi

  exec_and_log subl project.sublime-project
}
