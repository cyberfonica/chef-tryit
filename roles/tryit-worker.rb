name "tryit-worker"
description "Gunicorn servers to run TryIT Blog"
run_list(
    "recipe[tryit-django]"
)
