
# Python CI/CD Pipeline Project

## Overview
This project demonstrates a **CI/CD pipeline** for a simple Python application using **GitHub Actions, Docker, flake8, Bandit, and pytest**.  
The pipeline automatically runs code quality checks, security scans, unit tests, builds a Docker image, and pushes it to Docker Hub on every push to the `main` branch.

The application is a minimal Python program (Adding two numbers 2 & 3 which results in output as 5) designed to showcase pipeline functionality.



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

## CI/CD Pipeline Steps:

1. **Checkout Code** – Pull the latest code from the repository.  
2. **Install Dependencies** – Install Python packages from `requirements.txt`.  
3. **Code Linting** – Run `flake8` to enforce Python style standards.  
4. **Security Scan** – Run `Bandit` to detect potential security issues.  
5. **Unit Testing** – Run `pytest` to ensure the code functions correctly.  
6. **Docker Build** – Build a Docker image for the application.  
7. **Docker Push** – Push the image to Docker Hub using GitHub Secrets.  

---

## Sample Output:

Pushed code to Github:

<img width="1359" height="401" alt="git-push" src="https://github.com/user-attachments/assets/7a5faab7-aa5d-40ec-b957-9af26d9b64d5" />

CI Workflow Triggered:

<img width="1351" height="577" alt="Build-security-job" src="https://github.com/user-attachments/assets/cd34ac99-b7bb-4ecc-a975-730eb8b700e7" />

<img width="1350" height="537" alt="Docker-build-push-job" src="https://github.com/user-attachments/assets/f89a2a1f-c2fd-4f27-b101-85f2d7a2c7ac" />

Image pushed to Docker Hub:

<img width="1362" height="606" alt="dockerhub-python-image" src="https://github.com/user-attachments/assets/e3557b97-6a4e-455d-a1c9-3922873adf5b" />

Pulled Image locally:

<img width="1364" height="192" alt="python-image-pull" src="https://github.com/user-attachments/assets/e8b979a7-be01-4a73-8f30-8500662ff7cd" />

Run Container:

<img width="1357" height="125" alt="python-container-run" src="https://github.com/user-attachments/assets/8518bcf3-d580-4a59-af2b-8920f2507bac" />


---
## Local Setup

### 1. Clone the repository

```bash
git clone https://github.com/RajkumarR1206/python-ci-cd-project.git
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



