name "tryit-ec2"
description "Gunicorn servers to run TryIT Blog (in AWS)"
run_list(
    "recipe[tryit-django]"
)
