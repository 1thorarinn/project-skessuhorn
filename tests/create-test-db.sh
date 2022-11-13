#!/usr/bin/env bash

# If you're using the docker set up, you should have a test database already set up, however if not using docker this can be useful.

SCRIPT_DIR="${0%/*}"

WP_TESTS_DB_NAME=$(grep WP_TESTS_DB_NAME $SCRIPT_DIR/.env | cut -d '=' -f2)
WP_TESTS_DB_USER=$(grep WP_TESTS_DB_USER $SCRIPT_DIR/.env | cut -d '=' -f2)
WP_TESTS_DB_PASS=$(grep WP_TESTS_DB_PASS $SCRIPT_DIR/.env | cut -d '=' -f2)
WP_TESTS_DB_HOST=$(grep WP_TESTS_DB_HOST $SCRIPT_DIR/.env | cut -d '=' -f2)

mysqladmin -u $WP_TESTS_DB_USER -p$WP_TESTS_DB_PASS -h $WP_TESTS_DB_HOST create $WP_TESTS_DB_NAME
