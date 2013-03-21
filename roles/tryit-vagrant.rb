name "tryit-vagrant"
description "Role to show a demo"
run_list(
    "recipe[tryit-demo::user]",
    "recipe[tryit-demo::file]"
)
