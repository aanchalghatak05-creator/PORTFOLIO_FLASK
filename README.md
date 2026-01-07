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
