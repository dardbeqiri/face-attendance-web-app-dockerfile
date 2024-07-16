#!/bin/bash

# Start the backend
cd /face-attendance-web-app-react-python/backend
source venv/bin/activate
python3 -m uvicorn main:app --host 0.0.0.0 &

# Start the frontend
cd /face-attendance-web-app-react-python/frontend/face-attendance-web-app-front
export REACT_APP_BACKEND_URL=http://localhost:8000
npm start
