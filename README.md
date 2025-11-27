
# Python CI/CD Pipeline Project

## Overview
This project demonstrates a **CI/CD pipeline** for a simple Python application using **GitHub Actions, Docker, flake8, Bandit, and pytest**.  
The pipeline automatically runs code quality checks, security scans, unit tests, builds a Docker image, and pushes it to Docker Hub on every push to the `main` branch.

The application is a minimal Python program designed to showcase pipeline functionality.



## Project Structure

```

python-ci-cd-project/
│── app.py               # Simple Python script
│── test_app.py          # Unit tests for the application
│── requirements.txt     # Python dependencies
│── Dockerfile           # Dockerfile for containerizing the app
│── .dockerignore        # Files/folders to exclude from Docker build
│── .bandit              # Bandit configuration
│── .github/workflows/
│   └── ci.yml           # GitHub Actions CI workflow

````

---

## Technologies Used

- **Python 3.12** – Programming language for the application  
- **Docker** – Containerization of the Python app  
- **GitHub Actions** – CI/CD automation  
- **flake8** – Python code linting for style and formatting  
- **Bandit** – Security scanning for Python code  
- **pytest** – Unit testing framework  

---

## CI/CD Pipeline Steps

1. **Checkout Code** – Pull the latest code from the repository.  
2. **Install Dependencies** – Install Python packages from `requirements.txt`.  
3. **Code Linting** – Run `flake8` to enforce Python style standards.  
4. **Security Scan** – Run `Bandit` to detect potential security issues.  
5. **Unit Testing** – Run `pytest` to ensure the code functions correctly.  
6. **Docker Build** – Build a Docker image for the application.  
7. **Docker Push** – Push the image to Docker Hub using GitHub Secrets.  

---

## Local Setup

### 1. Clone the repository

```bash
git clone https://github.com/your-username/python-ci-cd-project.git
cd python-ci-cd-project
````

### 2. Set up a virtual environment

```bash
python -m venv venv
source venv/bin/activate   # Linux/macOS
# venv\Scripts\activate    # Windows
pip install -r requirements.txt
```

### 3. Run linting, tests, and security scan

```bash
flake8 .
bandit -r . -x ./venv
pytest -v
```

### 4. Build and run Docker container

```bash
docker build -t python-ci-cd-project:latest .
docker run --rm python-ci-cd-project:latest
```

You should see the Python application run successfully inside the container.

---

## GitHub Actions Workflow

The CI workflow (`.github/workflows/ci.yml`) is triggered on every push to the `main` branch and includes:

* Python environment setup
* Installing dependencies
* Running `flake8`, Bandit, and `pytest`
* Building Docker image
* Pushing Docker image to Docker Hub

**Required GitHub Secrets:**

* `DOCKERHUB_USERNAME` – Your Docker Hub username
* `DOCKERHUB_TOKEN` – Your Docker Hub access token

---

## Docker Hub

The project Docker image is available on Docker Hub:

[https://hub.docker.com/r/rajkumarr1206/python-ci-cd-project/tags](https://hub.docker.com/r/rajkumarr1206/python-ci-cd-project/tags)

---

## Notes

* `.dockerignore` ensures that unnecessary files like `venv/` and `__pycache__/` are excluded from Docker builds.
* Bandit is configured to exclude the `venv/` folder to avoid scanning dependencies.
* This pipeline demonstrates a clean, end-to-end CI/CD process for Python applications.

---

## License

This project is licensed under the MIT License.



