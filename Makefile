.PHONY: migrate migrate_down migrate_up migrate_version docker prod docker_delve local swaggo test

#===========================================================================================
# Go migrate postgresql

force:
        migrate -database postgres://postgres:postgres@localhost:5432/todo_db?sslmode=disable -path migrations force 1

version:
        migrate -database postgres://postgres:postgres@localhost:5432/todo_db?sslmode=disable -path migrations version

migrate_up:
        migrate -database postgres://postgres:postgres@localhost:5432/todo_db?sslmode=disable -path migrations up 1

migrate_down:
        migrate -database postgres://postgres:postgres@localhost:5432/todo_db?sslmode=disable -path migrations down 1