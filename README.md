# Go lang project with variable project name and .env setup

## Create .env file from .env.example
Shell script "init_config.sh" will copy .env.example and create .env. In case, you want to modify .env file just modify .env.example before run the "init_config.sh" or just modify .env after created.

```
sh init_config.sh
```

## Rename project
This method implemented sed. To rename golang project, Modify variable DEFAULT_PROJECT_NAME(old name) and NEW_PROJECT_NAME(new name) in the "rename_project.sh".

Remarks. Please ensure that PROJECT_NAME is not in other part of code (Exact match sequence).

```
sh rename_project.sh
```

## After Finish
To proof that the code still work. This will call function from Greetings and print .env variable.
```
go run main.go
```
