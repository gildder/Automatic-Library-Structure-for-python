# Python Project Structure Creator

This script automates the process of creating a standard structure for new Python projects. It's designed to help developers quickly set up a new project with the necessary directories and files, following best practices for Python project organization.

## Features

- Creates a new project directory within a centralized `projects` directory.
- Sets up standard Python project structure, including subdirectories for source code and tests.
- Generates initial files like `__init__.py`, a sample Python script, and basic test setup.
- Ready-to-use structure for Python package development.

## How to Use

1. Clone this repository or download the batch script.
2. Run the script using a Windows command prompt.
3. When prompted, enter the name of your new project.
4. The script will create the project structure under `projects` directory.

## Project Structure

When you run the script, it will create the following directory structure:

```plaintext
        projects/
        │
        ├── [Project Name]/
        │   ├── [Project Name]/
        │   │   ├── __init__.py
        │   │   └── rename.py
        │   ├── tests/
        │   │   ├── __init__.py
        │   │   └── test_rename.py
        │   ├── README.md
        │   └── setup.py
```


## Contributing

Contributions to enhance this script are welcome. Feel free to fork the repository and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is open source and available under the [MIT License](LICENSE).

## Author

- GitHub: [@gildder](https://github.com/gildder)
- Website: [gildder.com](https://gildder.com)
