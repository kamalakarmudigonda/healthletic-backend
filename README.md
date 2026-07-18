# Healthletic Backend

A sample Flask backend deployed using Docker, Helm, Kubernetes and GitHub Actions.

## Technologies

- Flask
- Docker
- GitHub Actions
- Helm
- Kubernetes
- Trivy

## CI/CD Pipeline

The pipeline automatically performs:

- Checkout Code
- Install Python Dependencies
- Run Application Test
- Docker Build
- Docker Push
- Trivy Security Scan
- Helm Lint
- Helm Template Validation
- Simulated Deployment
- Simulated Smoke Test
- Simulated Rollback

## Project Structure

```
healthletic-backend
│
├── app.py
├── Dockerfile
├── deploy.sh
├── requirements.txt
├── README.md
├── DEPLOYMENT_GUIDE.md
├── helm/
└── .github/workflows/deploy.yml
```

## Run Locally

```bash
pip install -r requirements.txt
python app.py
```

## Docker

```bash
docker build -t mudigonda/healthletic-backend:v1.0.0 .
docker run -p 5000:5000 mudigonda/healthletic-backend:v1.0.0
```

## Deployment

```bash
./deploy.sh
```
