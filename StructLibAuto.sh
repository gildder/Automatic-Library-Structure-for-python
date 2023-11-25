#!/bin/bash

# Ask for the project name
read -p "Enter your project name: " PROJECT_NAME

# Create or check for the existence of the 'projects' directory
if [ ! -d "projects" ]; then
    mkdir "projects"
    if [ $? -ne 0 ]; then
        echo "There was an error creating the 'projects' directory."
        exit 1
    fi
fi

# Create the main project directory inside 'projects'
if [ ! -d "projects/$PROJECT_NAME" ]; then
    mkdir "projects/$PROJECT_NAME"
    if [ $? -ne 0 ]; then
        echo "There was an error creating the project directory."
        exit 1
    fi
else
    echo "The directory projects/$PROJECT_NAME already exists."
    exit 0
fi

# Create subdirectories inside the project
mkdir -p "projects/$PROJECT_NAME/$PROJECT_NAME"
mkdir -p "projects/$PROJECT_NAME/tests"

# Check for errors in creating subdirectories
if [ $? -ne 0 ]; then
    echo "There was an error creating the project subdirectories."
    exit 1
fi

# Create Python files
touch "projects/$PROJECT_NAME/$PROJECT_NAME/__init__.py"
touch "projects/$PROJECT_NAME/$PROJECT_NAME/rename.py"
touch "projects/$PROJECT_NAME/tests/__init__.py"
touch "projects/$PROJECT_NAME/tests/test_rename.py"

# Create documentation and configuration files
touch "projects/$PROJECT_NAME/README.md"
touch "projects/$PROJECT_NAME/setup.py"

echo "The project structure $PROJECT_NAME was successfully created in projects/$PROJECT_NAME"
