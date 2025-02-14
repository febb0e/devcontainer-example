# devcontainer-example

This repository provides a simple example of using a devcontainer to set up a development environment for a Todo application. The devcontainer includes all necessary dependencies and configurations to get started with Robotframework quickly.

## Features

- **Devcontainer**: Configured with Python, Node.js, and Hatch.
- **Todo App**: A simple Todo application built with Vue.js and TypeScript.
- **Robot Framework**: Automated browser tests using Robot Framework and Playwright.

## Getting Started

### Setup

1. **Clone the repository**:
    ```sh
    git clone https://github.com/your-username/devcontainer-example.git
    cd devcontainer-example
    ```

2. **Open in Visual Studio Code**:
    ```sh
    code .
    ```

3. **Reopen in Container**:
    - Press `F1` and select `Remote-Containers: Reopen in Container`.

4. **Post Create Command**:
    - The post-create command will automatically install Playwright dependencies.

### Running the Todo App

1. **Start the development server**:
    ```sh
    VITE_ENVIRONMENT=Test npm run dev --prefix todo-app
    ```

2. **Open the application**:
    - Navigate to `http://localhost:3000` in your browser.

### Running Tests

1. **Run Robot Framework tests**:
    ```sh
    hatch run run-tests
    ```

## Project Structure

- **todo-app/**: Contains the Vue.js Todo application.
- **tests/**: Contains Robot Framework test cases.
- **.devcontainer/**: Devcontainer configuration files.
- **src/**: Contains additional resources and configurations.
