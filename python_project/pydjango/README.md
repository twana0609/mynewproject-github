# Django Project

This is a Django web application project.

## Setup Instructions

1. Create a virtual environment:
```bash
python -m venv venv
```

2. Activate the virtual environment:
- Windows:
```bash
.\venv\Scripts\activate
```
- Unix/MacOS:
```bash
source venv/bin/activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

4. Run migrations:
```bash
python manage.py migrate
```

5. Create a superuser:
```bash
python manage.py createsuperuser
```

6. Run the development server:
```bash
python manage.py runserver
```

## Project Structure

- `pydjango/` - Main project directory
  - `manage.py` - Django's command-line utility
  - `pydjango/` - Project settings directory
  - `requirements.txt` - Project dependencies
  - `.env` - Environment variables
  - `.gitignore` - Git ignore file
  - `README.md` - Project documentation

## Development

1. The development server will be available at http://localhost:8000
2. The admin interface will be available at http://localhost:8000/admin

## Deployment

For production deployment:
1. Set DEBUG=False in .env
2. Update ALLOWED_HOSTS in .env
3. Set a secure SECRET_KEY
4. Use a production database
5. Configure static files
6. Use a production WSGI server 