# My Journalist & Multimedia Storyteller Portfolio

This is my personal portfolio site, built with Flask and a small SQLite database to showcase writing, multimedia work, and short projects. I built it to be lightweight, editable from a simple admin UI, and easy to deploy.

## What this project includes

- A small admin interface to add, edit, and feature articles and multimedia items.
- An About page with an image gallery and a lightbox viewer.
- A contact form that stores messages in the local database.
- Support for uploading images (stored under `static/uploads/`) and automatic thumbnailing.

## Tech stack

- Python + Flask
- SQLite for local persistence (`content.db`)
- Jinja2 templates, vanilla JavaScript, and plain CSS for styling

## How I run it locally

1. Create and activate a virtual environment (I use venv):

    ```bash
    python -m venv .venv
    source .venv/bin/activate
    ```

2. Install dependencies:

    ```bash
    pip install -r requirements.txt
    ```

3. Start the dev server (the app respects the `PORT` env var):

    ```bash
    python main.py
    # or with PORT set, e.g. PORT=5004 python main.py
    ```

4. Open the site in your browser at http://127.0.0.1:5003 (or whichever PORT you chose).

## Admin notes

- The admin login uses a simple password stored in the `ADMIN_PASSWORD` environment variable; if not set the default is `adminpass`.
- Visit `/admin` to log in and manage content. After logging in you can edit the profile, upload gallery images, and manage content and messages.

## Deployment notes

- I included a `Procfile` (for Heroku-like platforms) and a `Dockerfile` for containerized deployment.
- The app is run in production with Gunicorn (the `Procfile` contains `web: gunicorn main:app`).
- `runtime.txt` is present to pin Python version for some PaaS providers.

## A few practical details I kept in mind

- Uploaded images and the local SQLite DB are included in this repository for convenience during development. For production, I recommend moving the DB to a managed service and storing uploads in external storage or a mounted volume.
- The repository contains a minimal `setup.py` for packaging if needed.

If you want me to add a quick health-check endpoint, a `.dockerignore`, or CI steps to build and publish a container image, tell me which and I’ll add it next.
