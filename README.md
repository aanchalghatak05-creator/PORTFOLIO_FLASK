# Journalist & Multimedia Storyteller Portfolio

A dynamic, professional portfolio website built with Flask and SQLite to showcase journalistic work, features, and multimedia content.

## Features

- **Dynamic Content Management:** Full admin dashboard for managing articles, multimedia clips, and profile information.
- **AJAX-Powered Archive:** Searchable and filterable writing archive with real-time updates based on Year and Category without page reloads.
- **Multimedia Gallery:** Integrated support for YouTube and other platforms with automated regex-based thumbnail extraction.
- **Adaptive Admin Forms:** Context-aware administrative interface that dynamically changes fields based on content type (Writing vs. Multimedia).
- **Contact Portal:** Secure, AJAX-enabled contact system with real-time submission feedback and database persistence.
- **Responsive Editorial Design:** Professional "Smart Pink" theme using CSS Custom Properties, optimized for high readability on mobile and desktop.
- **Admin Security:** Session-based authentication and custom decorators to protect management routes.

## Tech Stack

- **Backend:** Python 3, Flask
- **Database:** SQLite3
- **Frontend:** HTML5, CSS3 (Custom Properties), Vanilla JavaScript (ES6+)
- **Metadata:** Regex-based YouTube API integration for visual assets

## Project Structure

- `main.py`: Core application logic, database management, and routing.
- `templates/`: Jinja2 templates for structured and reusable UI components.
- `static/`:
    - `css/style.css`: Modern editorial styling and responsive layouts.
    - `js/main.js`: Client-side interactions and AJAX logic.
- `content.db`: Local SQLite database for persistence.

---

## Deployment

Quick notes to deploy this Flask app to a PaaS or container platform.

### Procfile

A `Procfile` is included to run the app with Gunicorn on platforms such as Heroku:

```
web: gunicorn main:app
```

### Heroku / similar (quick)

- Ensure `requirements.txt` includes `gunicorn` and your pinned Flask version (already present).
- The repo includes `runtime.txt` to pin Python to `python-3.11.9`.
- Deploy using the platform's standard flow.

### Docker (recommended for containerized deploy)

1. Build the image from the repository root:

```bash
docker build -t portfolio-flask:latest .
```

2. Run the container (exposes port 5000 by default):

```bash
# set PORT if you want a different value
docker run -e PORT=5000 -p 5000:5000 portfolio-flask:latest
```

The included `Dockerfile` installs dependencies and runs the app with `gunicorn` bound to `$PORT` (default 5000).

### OpenShift / Other PaaS notes

- The repository contains a `runtime.txt` to pin Python and `requirements.txt` for dependencies. If your platform needs a specific Python version, adjust `runtime.txt` accordingly.
- For OpenShift, ensure the container listens on the port the platform expects (we use `$PORT` environment variable in the `Dockerfile`/Procfile).

### Environment variables

- `ADMIN_PASSWORD`: (optional) set a custom admin password.
- `FLASK_SECRET`: (recommended) set a secure random secret key for session signing.
- `PORT`: port the app listens on (defaults to 5003 in dev, but container/Procfile use `$PORT`).

### Notes

- In production you should not commit `content.db` or the `static/uploads/` directory. Consider using a managed database or mount a persistent volume for uploads.
- For small deployments, `gunicorn main:app --workers 3 --bind 0.0.0.0:$PORT` is a good starting point.

---

If you want, I can also:

- Add a `.dockerignore` and improve the `Dockerfile` with a non-root user
- Add CI or GitHub Actions to build/publish the image
- Remove `content.db` and `static/uploads/` from the repo and add them to `.gitignore`
